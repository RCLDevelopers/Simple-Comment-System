function submitComment() {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var comment = document.getElementById("comment").value;

    $.ajax({
        type: "POST",
        url: "submit_comment.php",
        data: {name: name, email: email, comment: comment},
        success: function(response) {
            alert(response); // Display the server response
            loadComments(); // Reload comments after submission
        }
    });
}

function loadComments() {
    $.ajax({
        type: "GET",
        url: "get_comments.php",
        success: function(response) {
            $("#comments").html(response);
        }
    });
}

// Load comments on page load
$(document).ready(function() {
    loadComments();
});


function incrementViews(commentId) {
    $.ajax({
        type: "POST",
        url: "increment_views.php",
        data: { id: commentId, type: "views" },
        success: function (response) {
            $("#views" + commentId).text(response);
        }
    });
}

function incrementLikes(commentId) {
    $.ajax({
        type: "POST",
        url: "increment_likes.php",
        data: { id: commentId, type: "likes" },
        success: function (response) {
            $("#likes" + commentId).text(response);
        }
    });
}

// Example of calling the increment functions
// Assume commentId is the ID of the comment you want to increment
// incrementViews(commentId);
// incrementLikes(commentId);


function submitComment() {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var comment = document.getElementById("comment").value;

    // Validate inputs
    if (name.trim() === '' || email.trim() === '' || comment.trim() === '') {
        alert('Please fill in all fields before submitting.');
        return;
    }

    // Continue with the AJAX request
    $.ajax({
        type: "POST",
        url: "submit_comment.php",
        data: { name: name, email: email, comment: comment },
        success: function (response) {
            alert(response); // Display the server response
            loadComments(); // Reload comments after submission
            // Optionally, clear the form fields after successful submission
            document.getElementById("name").value = "";
            document.getElementById("email").value = "";
            document.getElementById("comment").value = "";
        }
    });
}

//Developed by www.rashtechcomputicslab.com Team