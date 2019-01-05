<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller 
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('UserModel');
		$this->load->library('session');
	  	$this->load->library('session','encrypt');
	  	$this->load->helper('directory');
	   	$this->load->helper('form');
	  	$this->load->library(array('form_validation'));
	}

	public function index(){
		$this->load->view('login_page');
	}

	public function home(){
		$this->load->view(base_url().'assets/dashboard/admin/index.html');
	}

   
    function login(){
    $email    = $this->input->post('email',TRUE);
    $password = $this->input->post('password',TRUE);
    print_r($validate = $this->UserModel->loginAuth($email,$password));
    if($validate->num_rows() > 0){
        $data  = $validate->row_array();
     	$auth_id = $data['auth_id'];
     	$user_role = $data['user_role'];
        $email = $data['email'];
        $user_role = $data['user_role'];
        $sesdata = array(
          	'email' => $email,
            'auth_id'=> $auth_id,
            'user_role'=> $user_role,
            'logged_in' => TRUE
        );

        $this->session->set_userdata('user',$sesdata);

       		if($user_role === '1'){
				redirect('user/home');
			}elseif ($user_role === '2'){
				redirect('home');
			}elseif ($user_role === '3'){
				redirect('home');
			}elseif ($user_role === '4'){
				redirect('home');
			}else{

			}

		}else{
			echo $this->session->set_flashdata('msg','Email or Password is Wrong');
   			redirect('user');
		}
	}

	public function logout(){
		$this->session->sess_destroy();
		echo $this->session->set_flashdata('msg','Logout successful');
		redirect('user/index');
	}


	public function signup_page(){
		$this->load->view('signup_page');
	}
}
?>