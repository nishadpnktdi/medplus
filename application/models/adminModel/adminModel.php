<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class adminModel extends CI_Model {


// Super-Admin dashboard widget
	function getHospitalCount()
	{
		return $this->db->count_all_results('tbl_hospital');
	}

	function getDoctorCount()
	{
		return $this->db->count_all_results('tbl_doctor');
	}

	function getPatientCount()
	{
		return $this->db->count_all_results('tbl_patient');
	}

	function getAppointmentCount()
	{
		return $this->db->count_all_results('tbl_appointment');
	}

// End Super-Admin dashbaord widget

function lastAppointment()
{
	return $this->db->select('*')->limit(5)->get('tbl_appointment')->result_array();
}

// Registration drop-down list
	function countryList()
	{
			return $this->db->get('tbl_countries')->result_array();
	}

	function stateList($intCountryId = 0 )
	{
		if($intCountryId  > 0 ){
			$this->db->select('state_id,state_name');
			$this->db->where('country_id',$intCountryId);
			return $this->db->get('tbl_states')->result_array();
		}
		else {
			return array();
		}

	}

	function cityList($intStateId = 0)
	{
		if($intStateId  > 0 ){
			$this->db->select('city_id,city_name');
			$this->db->where('state_id',$intStateId);
			return $this->db->get('tbl_cities')->result_array();
		}
		else {
			return array();
		}
	}

//END Registration drop-down list
}

/* End of file admin.php */
/* Location: ./application/models/admin/admin.php */
