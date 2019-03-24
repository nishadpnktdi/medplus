<?php
class User_api extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->model('api_model/adminModel/User_api_model');
    $this->load->helper('text');
  }

  public function login_api(){
    $email = $this->input->get('email');
    $pass = $this->input->get('password');
    $query = $this->User_api_model->login_api($email,$pass);
    echo json_encode($query);
  }
}
 ?>
