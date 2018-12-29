<?php
class UserModel extends CI_Model{
 
  function loginAuth($email,$password){
  	$this->db->where('email',$email);
  	$this->db->where('password',$password);
  	$result=$this->db->get('auth');
    // $result = $this->db->query("SELECT * FROM auth WHERE email='$email' AND password='$password'");
    return $result->row_array();
  }
 
}