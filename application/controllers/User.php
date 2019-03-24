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

	function admin(){
		    //Allow access to admins only
		    if($this->session->userdata('user_role') === '1'){
		    	$this->load->view('dashboard/admin/header.php');
					$data['appointments']=$this->UserModel->tableJoin();
					$this->load->view('dashboard/admin/content.php',$data);
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
			$this->load->view('login');
		} else{
			if($user_role === '1'){
				$this->admin();
			}elseif ($user_role === '2'){
				$this->hospital();
			}elseif ($user_role === '3'){
				$this->doctor();
			}elseif ($user_role === '4'){
				// redirect('home');
			}else{
				//none
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
	'logged_in' => TRUE,
);

$this->session->set_userdata($sesdata);
		if($user_role === '1'){
				redirect('adminController/admin');
			}elseif ($user_role === '2'){
				$this->hospital();
			}elseif ($user_role === '3'){
				$this->doctor();
			}elseif ($user_role === '4'){
				// redirect('home');
			}
		}else{
			echo $this->session->set_flashdata('msg','Email or Password is wrong');
			redirect('user');
		}
	}

	function logout(){
		$this->session->sess_destroy();
		echo $this->session->set_flashdata('msg','Logout successful');
		redirect('user');
	}

	function signup_page(){
		$this->load->view('signup_page');
	}
	function signup_page_doctor(){
		$this->load->view('doctor_signup');
	}
	function signup_page_hospital(){
		$this->load->view('hospital_signup');
	}

	function doc_signup(){
		$postData = $this->input->post();
		// $fname = $this->input->post('fname',TRUE);
		// $lname = $this->input->post('sname',TRUE);
		// $email = $this->input->post('email',TRUE);
		// $phone = $this->input->post('phone',TRUE);
		// $password = $this->input->post('inputPassword',TRUE);
		// $dob = $this->input->post('dob',TRUE);
		// $gender = $this->input->post('gender',TRUE);
		// $qualif = $this->input->post('qualification',TRUE);
		// $address1 = $this->input->post('inputAddress',TRUE);
		// $address2 = $this->input->post('inputAddress2',TRUE);
		// $city = $this->input->post('inputCity',TRUE);
		// $state = $this->input->post('inputState',TRUE);
		// $zip = $this->input->post('inputZip',TRUE);
		// $specialization = $this->input->post('inputSpecialization');
		// $experienceYear = $this->input->post('inputExperienceYear');
		// $experienceMonth =$this->input->post('inputExperienceMonth');
		// $consultationFee = $this->input->post('inputConsultationFee');
	$this->UserModel->docSignup($postData);
	//	$this->UserModel->docSignup($fname,$lname,$email,$phone,$password,$dob,$gender,$qualif,$address1,$address2,$city,$state,$zip,$specialization,$experienceYear,$experienceMonth,$consultationFee);
		$this->UserModel->insertDocAuth($email,$phone,$password);
		redirect('user');
	}

	function hosp_signup(){
		$postData = $this->input->post();
		// $name = $this->input->post('inputHospitalName',TRUE);
		// $email = $this->input->post('inputEmail',TRUE);
		// $phone = $this->input->post('inputPhone',TRUE);
		// $password = $this->input->post('inputPassword',TRUE);
		// $address1 = $this->input->post('inputAddress',TRUE);
		// $address2 = $this->input->post('inputAddress2',TRUE);
		// $city = $this->input->post('inputCity',TRUE);
		// $state = $this->input->post('inputState',TRUE);
		// $zip = $this->input->post('inputZip',TRUE);
	$this->UserModel->hospSignup($postData);
	//	$this->UserModel->docSignup($fname,$lname,$email,$phone,$password,$dob,$gender,$qualif,$address1,$address2,$city,$state,$zip,$specialization,$experienceYear,$experienceMonth,$consultationFee);
		$this->UserModel->insertHospAuth($email,$phone,$password);
		redirect('user');
	}

	function forgotPasswordPage(){
		$this->load->view('forgot_password');
	}

	function forgotPassword(){
		$config['protocol'] = 'smtp';
		$config['smtp_host'] = 'ssl://smtp.googlemail.com';
		$config['smtp_port'] = 465;
		$config['smtp_user'] = 'medplusmob@gmail.com';
		$config['smtp_pass'] = 'MedPlus@2019';
		$config['mailtype'] = 'html';
		$config['charset'] = 'utf-8';

		$this->email->initialize($config);
		$this->email->set_newline("\r\n");
		$email = $this->input->post('email',TRUE);
		if($email){
			$validate = $this->UserModel->validateForgotPasswordEmail($email);
			if($validate->num_rows() == 1){

				$data  = $validate->row_array();
				$userEmail = $data['email'];
				// $user_role = $data['user_role'];
				$secret = random_string('alnum',6);

				        $from = 'medplusmob@gmail.com';
				        $to = 'nishad.pnktdi@gmail.com';
								// $to = $userEmail;
								$reply='no-reply@medplus.com';
				        $subject = 'MedPlus password reset';
				        $message = "<p>Hello User,<p>
								You have request to reset your MedPlus password. Here is your secret code for resetting the password.
								<h2>".$secret."</h2>
								<p>If it wasn't you, Please ignore this email.</p>
								<p>MedPlus team</p>";

				        $this->email->from($from,'MedPlus');
				        $this->email->to($to);
								$this->email->reply_to($reply);
				        $this->email->subject($subject);
				        $this->email->message($message);

				        if ($this->email->send()) {

									$sesdata = array(
										'email' => $userEmail,
									);

									$this->session->set_userdata($sesdata);

									$this->UserModel->storePasswordResetDetails($userEmail,$secret);

									echo $this->session->set_flashdata('msg','A secret code has been sent to your email');
									$this->load->view('forgot_password_secret_validate');
				        } else {
				            show_error($this->email->print_debugger());
				        }
		}else{
			echo $this->session->set_flashdata('msg','User doesn\'t exist');
			$this->load->view('forgot_password');
	}

}else{
	echo $this->session->set_flashdata('msg','Please enter your email');
	$this->load->view('forgot_password');
}
}

function forgotPasswordSecretValidation()
{
	$secret = $this->input->post('secretKey',TRUE);
	$password = $this->input->post('password',TRUE);
	$passwordRetype = $this->input->post('passwordRetype',TRUE);

if($password == "" || $passwordRetype == "" || $secret == "")
{
	echo $this->session->set_flashdata('msg','Please check all fields are filled');
	$this->load->view('forgot_password_secret_validate');

}else{

		$userEmail = $this->session->userdata('email');
		$getKey = $this->UserModel->getSecretKey($userEmail);

		if($getKey->num_rows() > 0)
		{
			$secretKey = $getKey->row_array();
			$key = $secretKey['random_key'];

		if($secret != $key){
			echo $this->session->set_flashdata('msg',"Secret key doesn't match");
			$this->load->view('forgot_password_secret_validate');
		}else {

			if($password != $passwordRetype)
			{
				echo $this->session->set_flashdata('msg',"Your password doesn't match");
				$this->load->view('forgot_password_secret_validate');
			} else {

				$reset = $this->UserModel->resetPassword($userEmail,$password);
				echo $this->session->set_flashdata('msg','Password reset succesfully');
				redirect('user');
			}
		}
} else {
	echo $this->session->set_flashdata('msg',"Unable to reset password");
	$this->load->view('forgot_password_secret_validate');
}
}
}


}
?>
