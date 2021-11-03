<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "demodatabase");

// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
$id = $_GET['id'];
$balance = $_GET['balance'];
// Attempt insert query execution
$sql = "UPDATE demotable SET balance='$balance' WHERE id='$id'";
if(mysqli_query($link, $sql)){
    echo "Balance updated successfully";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>
