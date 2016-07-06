<?php
$mysql_host = "localhost";
$mysql_db   = "aldrig";
$mysql_user = "root";
$mysql_pass = ""; 


$link = mysqli_connect($mysql_host, $mysql_user, $mysql_pass, $mysql_db) or die("Fix SQL!" . mysqli_error($link)); 
$link->set_charset("utf8"); 
$result = mysqli_query($link, "SELECT * FROM `spm` ORDER BY RAND() LIMIT 1");
$total_records = mysqli_num_rows($result);
$random_number = rand(0, $total_records - 1);
mysqli_data_seek($result, $random_number);
$array = mysqli_fetch_array($result);
$spm = $array['spm'];
mysqli_free_result($result);
mysqli_close($link);
echo $spm;
?>