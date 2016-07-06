<?php

$mysql_host = "localhost";
$mysql_db   = "aldrig";
$mysql_user = "root";
$mysql_pass = ""; 

// Connection to database
  $link=mysqli_connect($mysql_host,$mysql_user,$mysql_pass,$mysql_db);
// Check connection
  if (mysqli_connect_errno())
    {
    echo 'NOT_OK';
    //echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }

// Increasing the current value with 1
  mysqli_query($link,"UPDATE vist SET vist = (vist + 1)
      WHERE ID='1'");

  mysqli_close($link);

  echo 'OK';   ?>