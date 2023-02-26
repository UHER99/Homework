<?php 

    require_once "connection/connection.php";

    if(isset($_POST['update']))
    {
        $id = $_GET['id'];
        $price = $_POST['price'];

        $query =  " update sp_product set price = '".$price."' where id='".$id."'";
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