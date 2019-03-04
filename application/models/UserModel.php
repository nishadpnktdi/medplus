<?php
class UserModel extends CI_Model{

	function __construct(){
		parent::__construct();
	}

  function loginAuth($email,$password){
  	$this->db->where('email',$email);
  	$this->db->where('password',$password);
  	$result=$this->db->get('tbl_auth');
    return $result;
  }

  function getHospitals(){
    $query=$this->db->get('tbl_hospital');
    $result=$query->result_array();
    return $result;
  }

  function getDoctors(){
    $query=$this->db->get('tbl_doctor');
    $result=$query->result_array();
    return $result;
  }

  function getPatients(){
    $query=$this->db->get('tbl_patient');
    $result=$query->result_array();
    return $result;
  }

	function getAppointments(){
 	 $query=$this->db->get('tbl_appointment');
 	 $result=$query->result_array();
 	 return $result;
  }

	function forgotPassword($email)
	{
		$this->db->where('email',$email);
		$result=$this->db->get('tbl_auth');
		return $result->result_array();
	}
}
