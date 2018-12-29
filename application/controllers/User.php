<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller 
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('UserModel');
	}

	public function index(){
		$this->load->view('login_page');
	}

	public function login(){

		$email =$this->input->post('email');
		$password =$this->input->post('password');

		$data=$this->UserModel->loginAuth($email,$password);

		if($data>0){
			$email=$data['email'];
			$level=$data['user_role'];
			$sesData=array(
					'email'=>$email,
					'level'=>$level,
					'logged_in'=>TRUE
			);
			$this->session->set_userdata('user',$sesData);
			
			if($level === '1'){
				$this->load->view('dashboard');
			}elseif ($level === '2') {
				redirect('dashboard');
			}elseif ($level === '3') {
				redirect('dashboard');
			}elseif ($level === '4'){
				redirect('dashboard');
			}else{
				$this->session->set_flashdata('msg','Email or Password is wrong');
				$this->load->view('dashboard');
			}
		}
	}


	public function logout(){
		$this->session->session_destroy();
		redirect('index');
	}


	public function signup_page(){
		$this->load->view('signup_page');
	}
}
?>