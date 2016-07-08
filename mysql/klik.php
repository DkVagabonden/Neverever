<?php
// Counting how many questions shown
include("Config.php");

// Connecting to the database
$link = mysqli_connect($mysql_host, $mysql_user, $mysql_pass, $mysql_db) or die("Fix SQL!" . mysqli_error($link)); 
	$link->set_charset("utf8"); 
	// Increasing the current value with 1
  $result = mysqli_query($link,"UPDATE shown SET shown = (shown + 1) WHERE ID='1'");
	mysqli_close($link);