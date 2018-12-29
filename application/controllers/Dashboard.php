<?php
class Dashboard extends CI_Controller{
	function __construct(){
		parent::__construct();
		if($this->session->userdata('logged_in')!==TRUE){
			redirect('user');
		}
	}

	function index(){
		//Allow access to admins only
		if($this->session->userdata('level')==='1'){
			$this->load->view('dashboard');
		}else{
			echo "Please login";
		}
	}

	function hospital(){
		//Allow access to hospital/clinic staff only 
		if($this->session->userdata('level')==='2'){
			$this->load->view('dashboard');
		}else{
			echo "Please login";
		}
	}

	function doctor(){
		//Allow access to doctor only
		if($this->session->userdata('level')==='3'){
			$this->load->view('dashboard');
		}else{
			echo "Please login";
		}
	}

	function patient(){
		//Allow access to patient only
		if($this->session->userdata('level')==='4'){
			$this->load->view('dashboard');
		}else{
			echo "Please login";
		}
	}
}