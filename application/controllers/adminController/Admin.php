<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {


	function __construct()
	{
		parent::__construct();
		$this->load->model('UserModel');
		$this->load->model('adminModel/adminModel');
	}

	public function index()
	{
		if($this->session->userdata('user_role') === '1'){
				  $title="Admin Dashboard - MedPlus";

				  $data['HCount'] = $this->adminModel->getHospitalCount();
					$data['DCount'] = $this->adminModel->getDoctorCount();
					$data['PCount'] = $this->adminModel->getPatientCount();
					$data['ACount'] = $this->adminModel->getAppointmentCount();
					$data['lastApp'] = $this->adminModel->lastAppointment();
					$this->load->view('dashboard/admin/header.php',$title);
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
		$this->load->view('dashboard/admin/adminHospitalView/hospital_list',$data);
		$this->load->view('dashboard/admin/footer');
	}

	function add_hospital()
	{
		$this->load->view('dashboard/admin/header');
		$data['countries'] = $this->adminModel->countryList();
		$this->load->view('dashboard/admin/adminHospitalView/add_hospital',$data);
		$this->load->view('dashboard/admin/footer');
	}

	function delete_hospital()
	{
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/adminHospitalView/delete_hospital',$data);
		$this->load->view('dashboard/admin/footer');
	}

	function update_hospital()
	{
		$this->load->view('dashboard/admin/header');
		$data['countries'] = $this->adminModel->countryList();
		$this->load->view('dashboard/admin/adminHospitalView/update_hospital',$data);
		$this->load->view('dashboard/admin/footer');
	}

	//
	//
	//

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
		$this->load->view('dashboard/admin/adminDoctorView/doctor_list',$data);
		$this->load->view('dashboard/admin/footer');
	}


	function add_doctor()
	{
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/adminDoctorView/add_doctor');
		$this->load->view('dashboard/admin/footer');
	}

	function delete_doctor()
	{

	}

	function update_doctor()
	{
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/adminDoctorView/update_doctor');
		$this->load->view('dashboard/admin/footer');
	}

	//
	//
	//

	function patient_view()
	{
		$data['patients']=$this->UserModel->getPatients();
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/adminPatientView/patient_list',$data);
		$this->load->view('dashboard/admin/footer');
	}

	function add_patient()
	{
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/adminPatientView/add_patient');
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
		$this->load->view('dashboard/admin/adminAppointmentView/appointment_list',$data);
		$this->load->view('dashboard/admin/footer');
	}

	function add_appointment()
	{
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/adminAppointmentView/add_appointment');
		$this->load->view('dashboard/admin/footer');
	}

	function delete_appointment()
	{

	}

	function update_appointment()
	{

	}

	function department_view()
	{
		$data['departments']=$this->UserModel->getDepartments();
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/adminDepartmentView/department_list',$data);
		$this->load->view('dashboard/admin/footer');
	}

	function add_department()
	{
		$this->load->view('dashboard/admin/header');
		$this->load->view('dashboard/admin/adminDepartmentView/add_department');
		$this->load->view('dashboard/admin/footer');
	}

	function delete_department()
	{

	}

}

/* End of file admin.php */
/* Location: ./application/controllers/admin/admin.php */
