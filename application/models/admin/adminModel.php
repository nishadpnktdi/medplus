<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class adminModel extends CI_Model {

	function getHospitalCount(){
		return $this->db->count_all_results('hospital');
	}

	function getDoctorCount(){
		return $this->db->count_all_results('doctor');
	}

	function getPatientCount(){
		return $this->db->count_all_results('patient');
	}

	function getAppointmentCount(){
		return $this->db->count_all_results('appointment');
	}

}

/* End of file admin.php */
/* Location: ./application/models/admin/admin.php */
