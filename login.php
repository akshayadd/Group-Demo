<?php
	
	$data = array();


			if( !isset($_GET["u_email"])) {

		$data["status"] = "error";
		$data["error_msg"] = "Email missing";
		echo json_encode($data);
		exit;

	}

	if( !isset($_GET["u_password"])) {

		$data["status"] = "error";
		$data["error_msg"] = "Password missing";
		echo json_encode($data);
		exit;

	}

	require_once("classes/dbo.class.php");

	$q = "select * from user where u_email = '".$_GET["u_email"]."' and u_password = '".md5($_GET["u_password"])."'";

	$res = $db->get($q);

	if(mysqli_num_rows($res) == 0 ){

		$data["status"] = "error";
		$data["error_msg"] = "No data found for this user!";
		echo json_encode($data);
		exit;
	}


	$data["status"] = "success";

	$row = mysqli_fetch_assoc($res);

	$data["data"][] = array(
		"uid" => $row["u_id"],
		"ufnm" => $row["u_fname"],
		"ulnm" => $row["u_lname"],
		"umobile"=>$row["u_mobile"],
		"ubudget"=>$row["u_budget"],
		"uemail" => $row["u_email"]
		
	);

	echo json_encode($data);

?>