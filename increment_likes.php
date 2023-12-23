<?php
include('comment_utils.php');

$commentId = $_POST["id"];

// Increment likes in the database
$sql = "UPDATE comments SET likes = likes + 1 WHERE id = $commentId";
$conn->query($sql);

// Return the updated likes count
echo getCommentCount($conn, $commentId, "likes");

$conn->close();
?>
<!--Developed by www.rashtechcomputicslab.com Team-->