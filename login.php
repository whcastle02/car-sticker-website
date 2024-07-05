<?php
// Database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "stickerdb";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
 die("Connection failed: " . $conn->connect_error);
}
if (isset($_POST['username']) && isset($_POST['password'])) {
 $matric_id = $_POST['username'];
 $password = $_POST['password'];
 // Vulnerable SQL query

 if ($result->num_rows > 0) {
 echo "Login successful!";
 } else {
 echo "Invalid username or password.";
 }
}
?>

