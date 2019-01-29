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
					$data['lastApp'] = $this->adminModel->lastAppointment();
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
		$data['countries'] = $this->adminModel->countryList();
		$this->load->view('dashboard/admin/hospital/add_hospital',$data);
		$this->load->view('dashboard/admin/footer');
	}

	function delete_hospital()
	{
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/hospital/delete_hospital',$data);
		$this->load->view('dashboard/admin/footer');
	}

	function update_hospital()
	{
		$this->load->view('dashboard/admin/header');
		$data['countries'] = $this->adminModel->countryList();
		$this->load->view('dashboard/admin/hospital/update_hospital',$data);
		$this->load->view('dashboard/admin/footer');
	}

	function getStateList()
	{
		$postData = $this->input->post();
    $intCounrtyId = $postData['countryId'];
		$data = $this->adminModel->stateList($intCounrtyId);
		echo json_encode($data);
	}

	function getCityList()
	{
		$postData = $this->input->post();
		$intStateId = $postData['stateId'];
		$data = $this->adminModel->cityList($intStateId);
		echo json_encode($data);
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
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/doctor/update_doctor');
		$this->load->view('dashboard/admin/footer');
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

//Registration drop-ddown list

	// function getCSCList()
	// {
	// 	data['countries'] = $this->adminModel->countryList();
	// 	data['states'] = $this->adminModel->stateList();
	// 	data['cities'] = $this->adminModel->cityList();
	// 	return data;
	// }

}

/* End of file admin.php */
/* Location: ./application/controllers/admin/admin.php */
