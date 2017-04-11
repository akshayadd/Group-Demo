<?php
	
	$data = array();

	if(empty($_GET)) {

		$data["status"] = "error";
		$data["error_msg"] = "Data Missing";
		echo json_encode($data);
		exit;
	}

	//Data Entry
	require_once("classes/dbo.class.php");

	$q = "insert into user(u_fname,u_lname,u_email,u_mobile,u_budget,u_password,u_profile_pic,u_is_active) values('".$_GET["u_fname"]."','".$_GET["u_lname"]."','".$_GET["u_email"]."','".$_GET["u_mobile"]."','".$_GET["u_budget"]."','".md5($_GET["u_password"])."','','1')";

	$res = $db->get($q);
 			
			$data["status"] = "success";
			
			echo json_encode($data);
			exit;

?>