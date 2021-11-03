<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "demodatabase");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect");
}

$moviename = $_GET['moviename'];
$theater = $_GET['theater'];
 
// Attempt select query execution
$sql = "SELECT * FROM movieseats WHERE moviename='$moviename' AND theater='$theater'";
if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){
            
                
                echo $row['movieseatslist'];
                
                
            
        }
        // Free result set
        mysqli_free_result($result);
    } else{
        echo "No records found";
    }
} else{
    echo "ERROR: Could not able to execute";
}
 
// Close connection
mysqli_close($link);
?>
