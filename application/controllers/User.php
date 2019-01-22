<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('UserModel');
		$this->load->helper('directory');
	}

	public function index(){
		$this->isLoggedIn();
	}

	// public function home()
	// {
	// 		redirect('dashboard/index');
	// }

	function admin(){
		    //Allow access to admins only
		    if($this->session->userdata('user_role') === '1'){
		    		$this->load->view('dashboard/admin/header.php');
					$this->load->view('dashboard/admin/content.php');
					$this->load->view('dashboard/admin/footer.php');
		    } else{
		    		echo $this->session->set_flashdata('msg',"You're not logged in(Admin)");
		    		redirect('user');
		    }
	}

	function hospital(){
			//Allow access to hospital/clinic staff only
			if($this->session->userdata('user_role')==='2'){
					$this->load->view('dashboard/hospital/header.php');
					$this->load->view('dashboard/hospital/content.php');
					$this->load->view('dashboard/hospital/footer.php');
			} else{
					echo $this->session->set_flashdata('msg',"You're not logged in(hospital)");
					redirect('user');
			}
	}

	function doctor(){
			//Allow access to doctor only
			if($this->session->userdata('user_role')==='3'){
					$this->load->view('dashboard/doctor/header.php');
					$this->load->view('dashboard/doctor/content.php');
					$this->load->view('dashboard/doctor/footer.php');
			} else{
					echo $this->session->set_flashdata('msg',"You're not logged in(doctor)");
					redirect('user');
			}
	}

	function isLoggedIn(){
		$isLoggedIn = $this->session->userdata('$logged_in');
		$user_role = $this->session->userdata('$user_role');
		if(!isset($isLoggedIn) || $isLoggedIn != TRUE)
		{
			// $this->load->view('login_page');
			$this->load->view('login2');
		} else{
			if($user_role === '1'){
				// $this->load->view('dashboard/admin/header.php');
				// $this->load->view('dashboard/admin/content.php');
				// $this->load->view('dashboard/admin/footer.php');
				$this->admin();
			}elseif ($user_role === '2'){
				// $this->load->view('dashboard/hospital/header.php');
				// $this->load->view('dashboard/hospital/content.php');
				// $this->load->view('dashboard/hospital/footer.php');
				$this->hospital();
			}elseif ($user_role === '3'){
				// $this->load->view('dashboard/doctor/header.php');
				// $this->load->view('dashboard/doctor/content.php');
				// $this->load->view('dashboard/doctor/footer.php');
				$this->doctor();
			}elseif ($user_role === '4'){
				// redirect('home');
			}else{
			}
		}
	}

function login(){
$email    = $this->input->post('email',TRUE);
$password = $this->input->post('password',TRUE);
$validate = $this->UserModel->loginAuth($email,$password);
if($validate->num_rows() > 0){
$data  = $validate->row_array();
$auth_id = $data['auth_id'];
$email = $data['email'];
$user_role = $data['user_role'];
$sesdata = array(
	'email' => $email,
'auth_id'=> $auth_id,
'user_role'=> $user_role,
'logged_in' => TRUE
);
$this->session->set_userdata($sesdata);
		if($user_role === '1'){
				// $this->load->view('dashboard/admin/header.php');
				// $this->load->view('dashboard/admin/content.php');
				// $this->load->view('dashboard/admin/footer.php');
				$this->admin();
			}elseif ($user_role === '2'){
				// $this->load->view('dashboard/hospital/header.php');
				// $this->load->view('dashboard/hospital/content.php');
				// $this->load->view('dashboard/hospital/footer.php');
				$this->hospital();
			}elseif ($user_role === '3'){
				// $this->load->view('dashboard/doctor/header.php');
				// $this->load->view('dashboard/doctor/content.php');
				// $this->load->view('dashboard/doctor/footer.php');
				$this->doctor();
			}elseif ($user_role === '4'){
				// redirect('home');
			}else{
			}
		}else{
			echo $this->session->set_flashdata('msg','Email or Password is wrong');
			redirect('user');
		}
	}
	public function logout(){
		$this->session->sess_destroy();
		echo $this->session->set_flashdata('msg','Logout successful');
		redirect('user');
	}
	public function signup_page(){
		$this->load->view('signup_page');
	}
	
	function hospital_view()
	{
		$data['hospitals']=$this->UserModel->getHospitals();
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/hospital_list',$data);
		$this->load->view('dashboard/admin/footer');
	}
	function add_hospital()
	{
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/add_hospital');
		$this->load->view('dashboard/admin/footer');
	}
}
?>