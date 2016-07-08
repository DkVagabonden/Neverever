<?php

 // Database config
$mysql_host = "localhost";
$mysql_db   = "neverever";
$mysql_user = "root";
$mysql_pass = ""; 


  $link = mysqli_connect($mysql_host, $mysql_user, $mysql_pass, $mysql_db) or die("Fix SQL!" . mysqli_error($link)); 
  	mysqli_select_db($link, $mysql_db);
	$link->set_charset("utf8"); 
?>