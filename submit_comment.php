<?php
// Establish a connection to the database
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Comm";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Process form data and insert into the database
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST["name"];
    $email = $_POST["email"];
    $comment = $_POST["comment"];

    $sql = "INSERT INTO comments (name, email, comment) VALUES ('$name', '$email', '$comment')";

    if ($conn->query($sql) === TRUE) {
        echo "Comment submitted successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
