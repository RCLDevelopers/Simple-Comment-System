<?php
function getCommentCount($conn, $commentId, $type)
{
    $sql = "SELECT $type FROM comments WHERE id = $commentId";
    $result = $conn->query($sql);

    if ($result === false) {
        return "Error";
    }

    $row = $result->fetch_assoc();
    return $row[$type];
}
?>
<!--Developed by www.rashtechcomputicslab.com Team-->