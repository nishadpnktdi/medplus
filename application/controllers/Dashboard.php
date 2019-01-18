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
			$this->load->view('dashboard/admin/index.html');
		} else{
			echo $this->session->set_flashdata('msg',"You're not logged in(Admin)");
			redirect('user');
		}
	}

	function hospital(){
		//Allow access to hospital/clinic staff only 
		if($this->session->userdata('level')==='2'){
			$this->load->view(base_url().'assets/dashboard/hospital/index.html');
		} else{
			echo "Please login";
		}
	}

	function doctor(){
		//Allow access to doctor only
		if($this->session->userdata('level')==='3'){
			$this->load->view(base_url().'assets/dashboard/doctor/index.html');
		} else{
			echo "Please login";
		}
	}
	}
?>