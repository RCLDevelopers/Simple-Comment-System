<!--Developed by www.rashtechcomputicslab.com Team-->
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

// Retrieve comments from the database
$sql = "SELECT * FROM comments ORDER BY created_at DESC";
$result = $conn->query($sql);

if ($result === false) {
    // If the query fails, display the error message
    die("Error executing the query: " . $conn->error);
}

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo '<div class="comment">';
        echo '<strong>' . $row["name"] . '</strong> (' . $row["email"] . '):<br>';
        echo $row["comment"] . '<br>';
        echo 'Views: <span id="views' . $row["id"] . '">' . $row["views"] . '</span> ';
        echo 'Likes: <span id="likes' . $row["id"] . '">' . $row["likes"] . '</span>';
        echo '</div>';
    }
} else {
    echo 'No comments yet.';
}

$conn->close();
?>


