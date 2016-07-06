<?php
$servername = "localhost";
$username = "#";
$password = "#";
$dbname = "#";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "INSERT INTO question (question)
VALUES ('$_POST[question]')";

if ($conn->query($sql) === TRUE) {
    echo "New question created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>