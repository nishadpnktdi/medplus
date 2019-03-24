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

	function getDepartments(){
		$query=$this->db->get('tbl_specialization');
		$result=$query->result_array();
		return $result;
	}

	function validateForgotPasswordEmail($email)
	{
		$this->db->where('email',$email);
		$result= $this->db->get('tbl_auth');
		return $result;
	}

	function storePasswordResetDetails($userEmail,$secret)
	{

		$data = array(
			'email' => $userEmail,
			'random_key' => $secret,
		);

		$this->db->set('expires', 'NOW() + INTERVAL 10 MINUTE', FALSE);
		$this->db->insert('tbl_forgot_password',$data);
	}

	function getSecretKey($userEmail){
		$this->db->where('expires <','NOW()', FALSE);
		$this->db->delete('tbl_forgot_password');

		$this->db->where('email',$userEmail);
		$result = $this->db->get('tbl_forgot_password');
		return $result;
	}

	function resetPassword($userEmail,$password)
	{
		$this->db->where('email',$userEmail);
		$this->db->set('password',$password);
		$this->db->update('tbl_auth');
	}

	function docSignup($postData = array())
	{
		$fname = addslashes($postData['firstName']);
		$lname = addslashes($postData['lastName']);
		$email = $postData['inputEmail'];
		$phone = $postData['inputPhone'];
		$dob = $postData['inputDob'];
		$gender = $postData['gridRadios'];
		// $qualif = $postData['qualification'];
		$address1 = $postData['inputAddress'];
		$address2 = $postData['inputAddress2'];
		$city = $postData['inputCity'];
		$state = $postData['inputState'];
		$zip = $postData['inputZip'];
		$specialization = $postData['inputSpecialization'];
		$experienceYear = $postData['inputExperienceYear'];
		$experienceMonth = $postData['inputExperienceMonth'];
		$experience = $experienceYear." Years and ".$experienceMonth." Months";
		$consultationFee = $postData['inputConsultationFee'];

		$query="INSERT INTO tbl_doctor VALUES('','$fname','$lname','$email','$phone','$experience','$consultationFee','$specialization','$dob','$gender','$address1','$address2','$city','$state','$zip','','')";
		$this->db->query($query);
	}

	function hospSignup($postData = array())
	{
		$name = addslashes($postData['inputHospitalName']);
		$email = $postData['inputEmail'];
		$phone = $postData['inputPhone'];
		$address1 = $postData['inputAddress'];
		$address2 = $postData['inputAddress2'];
		$address = $address1."\n".$address2;
		$city = $postData['inputCity'];
		$state = $postData['inputState'];
		$zip = $postData['inputZip'];

		$query="INSERT INTO tbl_hospital VALUES('','$name','$address','$phone','$email','$zip','$state','$city','','1')";
		$this->db->query($query);
	}

	// function docSignup_($fname,$lname,$email,$phone,$dob,$gender,$qualif,$address1,$address2,$city,$state,$zip,$specialization,$experienceYear,$experienceMonth,$consultationFee)
	// {
	// 	$query="INSERT INTO tbl_doctor VALUES('',$fname,$lname,$email,$phone,$dob,$gender,$qualif,$address1,$address2,$city,$state,$zip,$specialization,$experienceYear,$experienceMonth,$consultationFee)";
	// 	$result=$query->result_array();
	// }

	function insertDocAuth($postData = array())
	{
		$email = $postData['inputEmail'];
		$phone = $postData['inputPhone'];
		$password = $postData['inputPassword'];

		$query="INSERT INTO tbl_auth VALUES('','$email','$phone','$password','3','','','')";
		$this->db->query($query);
	}

	function insertHospAuth($postData = array())
	{
		$email = $postData['inputEmail'];
		$phone = $postData['inputPhone'];
		$password = $postData['inputPassword'];

		$query="INSERT INTO tbl_auth VALUES('','$email','$phone','$password','2','','','')";
		$this->db->query($query);
	}

	// fucntion tableJoin(){
	// 	$query = $this->db->select("tbl_appointment.*,tbl_doctor.first_name as fname,tbl_doctor.last_name as lname");
	// 	$this->db->from('tbl_appointment');
	// 	$this->db->join("tbl_doctor","");
	// }

}
