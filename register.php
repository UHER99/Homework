<?php 
// session_start();
include_once "input.php";
include_once "connection.php";

$con = new conn();
$db = $con->connect();

if($_POST){
    $obj = new insert($db);
    $obj->username = $_POST['username'];
    $obj->password = $_POST['password'];
    $obj->firstname = $_POST['firstname'];
    $obj->lastname = $_POST['lastname'];
    $obj->selert();
    $obj->row();
}


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title class="saysettha">register</title>

    <link rel="stylesheet" href="css/style.css">

</head>
<body>
<div class="container">
    <span class="logo"></span>
    <h3>ຍິນດີຕ້ອນຮັບສູ່ການສະໝັກເປັນສະມາຊິກ</h3>
    <br>
    <form action="register.php" method="post">
    <div class="mb-3">
        <input type="text" name="username" required>
        <span></span>
        <label for="username">Username</label>
    </div>
    <div class="mb-3">
        <input type="password" name="password" required>
        <span></span>
        <label for="password">Password</label>
    </div>
    <div class="mb-3">
        <input type="text" name="firstname" required>
        <span></span>
        <label for="firstname">Firstname</label>
    </div>
    <div class="mb-3">
        <input type="text" name="lastname" required>
        <span></span>
        <label for="lastname">Lastname</label>
    </div>
    <br>
        <input type="submit" name="submit" value="Submit" class="btn btn-primary">

    </form>
    <br>
    <p>ສະໝັກເປັນສະມາຊິກເເລ້ວ ກົດທີ່ນີ້ເພື່ອ? <a href="index.php" class="saysettha">ເຂົ້າສູ່ລະບົບ</a></p>
</div>
</body>
</html>