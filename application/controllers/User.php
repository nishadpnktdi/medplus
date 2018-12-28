<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->model('User_model');
	}

	public function index(){
			if($this->session->userdata('user')){
				redirect('home');
			}
			else{
				$this->load->view('login_page');
			}
	}

	public function login(){
		$email =$_POST['email'];
		$password = $_POST['password'];

		$data=$this->users_model->login($email,$password);

		if($data){
			$this->session->set_userdata('user',$data);
			redirect('home');
		}
		else {
			header('location:'.base_url().$this->index());
			$this->session->set_flashdata('error','Your email or password is wrong');
		}
	}

	public function home(){
		$this->load->library('session');

		if($this->session->userdata('user')){
			$this->load->view('home');
		}
		else{
			redirect('/');
		}
	}

	public function logout(){
		$this->session->unset_userdsta('user');
		redirect('/');
	}
}
?>