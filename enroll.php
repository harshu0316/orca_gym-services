<?php
// Step 1: Connect to the database
$host = "localhost";
$username = "root"; // change if needed
$password = "";     // change if needed
$database = "gym_db";

$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Step 2: Get form data
$name = $_POST['name'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$membership = $_POST['membership'];
$message = $_POST['message'];

// Step 3: Insert into database
$sql = "INSERT INTO enrollments (name, email, phone, membership, message)
        VALUES ('$name', '$email', '$phone', '$membership', '$message')";

if ($conn->query($sql) === TRUE) {
  header("location:index.html") ;
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>