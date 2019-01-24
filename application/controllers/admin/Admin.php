<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {


	function __construct()
	{
		parent::__construct();
		$this->load->model('UserModel');
		$this->load->model('admin/adminModel');
	}

	public function index()
	{
		if($this->session->userdata('user_role') === '1'){
		    	$this->load->view('dashboard/admin/header.php');
				  $data['HCount'] = $this->adminModel->getHospitalCount();
					$data['DCount'] = $this->adminModel->getDoctorCount();
					$data['PCount'] = $this->adminModel->getPatientCount();
					$data['ACount'] = $this->adminModel->getAppointmentCount();
					$this->load->view('dashboard/admin/content.php',$data);
					$this->load->view('dashboard/admin/footer.php');
		    } else{
		    		echo $this->session->set_flashdata('msg',"You're not logged in(Admin)");
		    		redirect('user');
		    }
	}

	function hospital_view()
	{
		$this->load->view('dashboard/admin/header');
		$data['hospitals']=$this->UserModel->getHospitals();
		$this->load->view('dashboard/admin/hospital/hospital_list',$data);
		$this->load->view('dashboard/admin/footer');
	}

	function add_hospital()
	{
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/hospital/add_hospital');
		$this->load->view('dashboard/admin/footer');
	}

	function delete_hospital()
	{

	}

	function update_hospital()
	{

	}


	//
	//
	//

	function doctor_view()
	{
		$this->load->view('dashboard/admin/header');
		$data['doctors']=$this->UserModel->getDoctors();
		$this->load->view('dashboard/admin/doctor/doctor_list',$data);
		$this->load->view('dashboard/admin/footer');
	}


	function add_doctor()
	{
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/doctor/add_doctor');
		$this->load->view('dashboard/admin/footer');
	}

	function delete_doctor()
	{

	}

	function update_doctor()
	{

	}

	//
	//
	//

	function patient_view()
	{
		$data['patients']=$this->UserModel->getPatients();
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/patient/patient_list',$data);
		$this->load->view('dashboard/admin/footer');
	}

	function add_patient()
	{
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/patient/add_patient');
		$this->load->view('dashboard/admin/footer');
	}

	function delete_patient()
	{

	}

	function update_patient()
	{

	}

	//
	//
	//

	function appointment_view()
	{
		$data['appointments']=$this->UserModel->getAppointments();
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/hospital_list',$data);
		$this->load->view('dashboard/admin/footer');
	}

	function add_appointment()
	{
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/appointment/add_appointment');
		$this->load->view('dashboard/admin/footer');
	}

	function delete_appointment()
	{

	}

	function update_appontment()
	{

	}

}

/* End of file admin.php */
/* Location: ./application/controllers/admin/admin.php */
