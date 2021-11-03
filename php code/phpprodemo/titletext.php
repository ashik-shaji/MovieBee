<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "demodatabase");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect");
}

$id = $_GET['id'];
 
// Attempt select query execution
$sql = "SELECT * FROM demotable WHERE id='$id'";
if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($row = mysqli_fetch_array($result)){
            
                
                echo $row['username'];
                
                
            
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
