<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "aldrig";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Tilslutning til database fejlede: " . $conn->connect_error);
} 

$sql = "INSERT INTO spm (spm)
VALUES ('$_POST[spm]')";

if ($conn->query($sql) === TRUE) {
    echo "Nyt spørgsmål tilføjet!";
} else {
    echo "Fejl: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>