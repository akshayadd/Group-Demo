<?php

	class dbo {

		private $db_host = "localhost";
		private $db_user = "root";
		private $db_pswd = "";
		private $db_name = "xpense";
		private $link;
                                   
		function __construct() {
			$this->link = mysqli_connect($this->db_host, $this->db_user, $this->db_pswd, $this->db_name) or die(mysqli_connect_error());
		}

		function dml($q) {
			mysqli_query($this->link, $q) or die(mysqli_error($this->link));
		}
		
		function get($q) {
			$res = mysqli_query($this->link, $q) or die(mysqli_error($this->link));
			return $res;
		}

		function get_scalar($q) {
			$res = mysqli_query($this->link, $q) or die(mysqli_error($this->link));
			$row = mysqli_fetch_row($res);
			return $row[0];
		}
		function getlastinsertid()
		{
			$id=mysqli_insert_id($this->link);
			return $id;
		}

	}

 /*/*
         * Google Cloud Messaging API Key
         */
        define("GOOGLE_API_KEY", " AIzaSyBEeXDMo5_5h8PlTR8aWSToczo3H31zcQQ"); // Place your Google API Key*/
        
	$db = new dbo();


?>