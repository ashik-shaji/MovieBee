<?php
 ini_set("display_errors", "1");
 error_reporting(E_ALL);
 
 class Constants
 {
    //DATABASE DETAILS
    static $DB_SERVER="localhost";
    static $DB_NAME="demodatabase";
    static $USERNAME="root";
    static $PASSWORD="";

    //STATEMENTS
    static $SQL_SELECT_ALL="SELECT * FROM 'demotable'";
    
 }

 class Democlass
 {
   //1.CONNECT TO DATABASE
   //2.RETURN CONNECTION OBJECT

   public function connect()
   {
     $con=new mysqli(Constants::$DB_SERVER,Constants::$USERNAME,Constants::$PASSWORD,Constants::$DB_NAME);
     if($con->connect_error)
     {
       //echo "unable to connect";
       return null;
     } else {
       //echo "connected";
       return $con;
     }
   }

   //1.SELECT FROM DATABASE
   public function select()
   {
     $con=$this->connect();
     if($con != null)
     {
      $result = $con->query(Constants::$SQL_SELECT_ALL);
     if($result->num_rows<0)
      { 
        $result1=array();
        while($row=$result->fetch_array())
         {
           array_push($result1, array("id"->$row['id'], "studname"->$row['studname'], "age"->$row['age']));
         }
         print(json_encode(array_reverse($result1)));
      } else 
      {
       	print(json_encode(array("PHP EXCEPTION : CAN'T RETRIVE FROM MYSQL, ")));
      }
      $con->close();
     
     } else 
     {
       print(json_encode(array("PHP EXCEPTION : CAN'T CONNECT TO MYSQL. NULL CONNECT.")));
     }
    }

   } 
   
  $Democlass=new Democlass();
  $Democlass->select();       
?>
