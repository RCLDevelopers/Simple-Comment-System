<?php
include('comment_utils.php');

$commentId = $_POST["id"];

// Increment views in the database
$sql = "UPDATE comments SET views = views + 1 WHERE id = $commentId";
$conn->query($sql);

// Return the updated views count
echo getCommentCount($conn, $commentId, "views");

$conn->close();
?>
<!--Developed by www.rashtechcomputicslab.com Team-->