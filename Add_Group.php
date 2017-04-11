<?php 

	$data = array();
	$member = array();

	if(empty($_GET)) {

		$data["status"] = "error";
		$data["error_msg"] = "Data Missing";
		echo json_encode($data);
		exit;
	}

	require_once("classes/dbo.class.php");

	$q1 = "select * from user";
	$res = $db->get($q1);
	
	while($row=mysqli_fetch_assoc($res))
	{
		
		$mobile=$row['u_mobile'];

		for($i=0;$i<count($_GET)-2;$i++)
		{
				$usrmobile = $_GET[$i];
			if($mobile==$usrmobile)
			{

				$member[] = $row['u_id'];
				
			}
		}
	}

$q = "insert into grp(grp_admin_id,grp_name) values('".$_GET["grp_admin_id"]."','".$_GET["grp_name"]."')";

$db ->dml($q);

$last_id = $db->getlastinsertid();


		for($i=0;$i<count($member);$i++)
		{

				$q2 = "insert into groupdetails(grp_members_id,grp_details_grp_id) values('".$member[$i]."','".$last_id."')";
				$db->dml($q2);
		}
	
	$data["status"] = "success";

	echo json_encode($data);
?>