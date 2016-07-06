<?php
$mysql_host = "localhost";
$mysql_db   = "aldrig";
$mysql_user = "root";
$mysql_pass = ""; 

$link = mysqli_connect($mysql_host, $mysql_user, $mysql_pass, $mysql_db) or die("Fix SQL!" . mysqli_error($link)); 
$link->set_charset("utf8"); 
mysqli_select_db($link, $mysql_db);

$result = mysqli_query($link, "SELECT * FROM spm");
$num_rows = mysqli_num_rows($result);

echo "$num_rows";

?>
