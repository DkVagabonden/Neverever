<?php
include("Config.php");

 // Title on every page 
$page_title = "Jeg har aldrig - Admin Panel";
 // Name on every page
$page_name  = "Jeg har aldrig";
 // icon on every page
$page_icon ="fa fa-fire";

// This shows how many questions has been shown
$result3 = mysqli_query($link, "SELECT shown FROM shown");
	while ($rows = mysqli_fetch_array($result3)):
      $shown = $rows['shown'];
	endwhile;

 // How many questions 
$result1 = mysqli_query($link, "SELECT * FROM questions");
$num_rows = mysqli_num_rows($result1);

 // Picking a random Question
$result2 = mysqli_query($link, "SELECT * FROM questions ORDER BY RAND() LIMIT 1");
$total_records = mysqli_num_rows($result2);
$random_number = rand(0, $total_records - 1);
mysqli_data_seek($result2, $random_number);
$array = mysqli_fetch_array($result2);
$spm = $array['questions'];
mysqli_free_result($result2);
mysqli_close($link);

?>