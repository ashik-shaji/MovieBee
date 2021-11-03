<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "demodatabase");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$personid = $_GET['personid'];
 
// Attempt select query execution
$sql = "SELECT * FROM tickettable WHERE personid='$personid'";
if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        while($rows = mysqli_fetch_array($result)){
            



             $ticketid = $rows['ticketid'];
             $moviename = $rows['moviename'];
             $movieimage = $rows['movieimage'];
             $rating = $rows['rating'];
             $stars = $rows['stars'];
             $gerne = $rows['gerne'];
             $movieday = $rows['movieday'];
             $movietime = $rows['movietime'];
             $theater = $rows['theater'];
             $seatname = $rows['seatname'];
             $personid = $rows['personid'];

             $statement['list_of_tickets'][] = array('ticketid' => $ticketid, 'moviename' => $moviename, 'movieimage' => $movieimage, 'rating' => $rating, 'stars' => $stars, 'gerne' => $gerne, 'movieday' => $movieday, 'movietime' => $movietime, 'theater' => $theater, 'seatname' => $seatname, 'personid' => $personid);

                
                
            
        }
        // Free result set
        mysqli_free_result($result);
        echo json_encode($statement);
    } else{
        echo "No records found";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// Close connection
mysqli_close($link);
?>
