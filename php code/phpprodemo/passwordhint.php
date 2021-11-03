<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "demodatabase");

// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
$id = $_GET['id'];
$passwordhint = $_GET['passwordhint'];
// Attempt insert query execution
$sql = "UPDATE demotable SET passwordhint='$passwordhint' WHERE id='$id'";
if(mysqli_query($link, $sql)){
    echo "PasswordHint updated successfully";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>
