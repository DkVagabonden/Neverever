<?php
//Finding a random question from the questions table in the aldrig database
include("Config.php");

$result = mysqli_query($link, "SELECT * FROM `questions` ORDER BY RAND() LIMIT 1");
$total_records = mysqli_num_rows($result);
$random_number = rand(0, $total_records - 1);
mysqli_data_seek($result, $random_number);
$array = mysqli_fetch_array($result);
$questions = $array['questions'];
mysqli_free_result($result);
mysqli_close($link);
echo $questions;
?>