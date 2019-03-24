<?php
class User_api_model extends CI_Model{
    public function __construct()
{
parent::__construct();
// Your own constructor code
}

// code for login api

public function login_api($username,$password){
$query = $this->db->query("SELECT * FROM `tbl_auth` WHERE `email` = '$username' AND `password` = '$password'");
return $query->result_array();
}
}
?>
