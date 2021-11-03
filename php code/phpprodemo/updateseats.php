<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "demodatabase");

// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
$moviename = $_GET['moviename'];
$theater = $_GET['theater'];
$movieseatslist = $_GET['movieseatslist'];
// Attempt insert query execution
$sql = "UPDATE movieseats SET movieseatslist='$movieseatslist' WHERE moviename='$moviename' AND theater='$theater'";
if(mysqli_query($link, $sql)){
    echo "Record updated successfully";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>
