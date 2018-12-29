<?php
class UserModel extends CI_Model{

	function __construct(){
		parent::__construct();
		$this->load->database();
	}
 
  function loginAuth($email,$password){
  	$this->db->where('email',$email);
  	$this->db->where('password',$password);
  	$result=$this->db->get('auth');
    return $result;
  }
 
}