<?php

class User_model extends CI_model {
	function __construct(){
		parent::__construct();
	}

	public function login($email, $password){
		$query = $this->db->get_where('auth', array('email'=>$email, 'password'=>$password));
		return $query->row_array();
	}
}

?>