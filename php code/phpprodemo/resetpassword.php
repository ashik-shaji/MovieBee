<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "demodatabase");

// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
$email = $_GET['emailaddress'];
$password = $_GET['password'];
// Attempt insert query execution
$sql = "UPDATE demotable SET password=$password WHERE email_address=$email";
if(mysqli_query($link, $sql)){
    echo "Password updated successfully";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>
