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
$email = $_POST['email'];
$message = $_POST['message'];

// Step 3: Insert into database
$sql = "INSERT INTO feedbacks (email,message)
        VALUES ('$email', '$message')";

if ($conn->query($sql) === TRUE) {
  header("location:index.html");
} else {
  echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>