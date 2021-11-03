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
$username = $_GET['username'];
$passwordhint = $_GET['passwordhint'];
$balance = $_GET['balance'];			
// Attempt insert query execution
$sql = "INSERT INTO demotable (email_address, password, username, passwordhint, balance) VALUES ('$email', '$password', '$username', '$passwordhint', '$balance')";
if(mysqli_query($link, $sql)){
    echo "Record inserted successfully";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>
