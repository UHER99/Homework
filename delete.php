<?php
require_once("connection/connection.php");
if(isset($_GET['Del']))
         {
             $id = $_GET['Del'];
             $query = " delete from sp_product where id = '".$id."'";
             $result = mysqli_query($con,$query);
             if($result)
             {
                 header("location:infomation.php");
             }
             else
             {
                 echo ' Please Check Your Query ';
             }
        }
         else
         {
             header("location:infomation.php");
         }
?>