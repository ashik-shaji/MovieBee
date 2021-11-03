<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "demodatabase");

// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
$moviename = $_GET['moviename'];
$movieimage = $_GET['movieimage'];
$rating = $_GET['rating'];
$stars = $_GET['stars'];
$gerne = $_GET['genre'];
$movieday = $_GET['movieday'];
$movietime = $_GET['movietime'];
$theater = $_GET['theater'];
$seatname = $_GET['seatname'];
$personid = $_GET['personid'];			
// Attempt insert query execution
$sql = "INSERT INTO tickettable (moviename, movieimage, rating, stars, gerne, movieday, movietime, theater, seatname, personid) VALUES ('$moviename', '$movieimage', '$rating', '$stars', '$gerne', '$movieday', '$movietime', '$theater', '$seatname', '$personid')";
if(mysqli_query($link, $sql)){
    echo "Record inserted successfully";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>
