<?php
class UserModel extends CI_Model{

	function __construct(){
		parent::__construct();
	}

  function loginAuth($email,$password){
  	$this->db->where('email',$email);
  	$this->db->where('password',$password);
  	$result=$this->db->get('auth');
    return $result;
  }

  function getHospitals(){
    $query=$this->db->get('hospital');
    $result=$query->result_array();
    return $result;
  }

  function getDoctors(){
    $query=$this->db->get('doctor');
    $result=$query->result_array();
    return $result;
  }

  function getPatients(){
    $query=$this->db->get('patient');
    $result=$query->result_array();
    return $result;
  }

	function getAppointments(){
 	 $query=$this->db->get('appointment');
 	 $result=$query->result_array();
 	 return $result;
  }
}
