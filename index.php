<?php 

    session_start();
    include_once "connection.php";
    include_once "input.php";

    $con = new conn();
    $db = $con->connect();

    if($_POST){
        $obj = new insert($db);
        $obj->username = $_POST['username'];
        $obj->password = $_POST['password'];
        $obj->insert2();
        $obj->row2();
    }

?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login Page</title>

    <link rel="stylesheet" href="css/style.css">

</head>
<body>
<div class="container">
    <span class="logo"></span>
    <h3>ເຂົ້າສູ່ລະບົບ</h3>
    <br>

    <?php if (isset($_SESSION['success'])) : ?>
        <div class="success">
            <?php 
                echo $_SESSION['success'];
            ?>
        </div>
    <?php endif; ?>


    <?php if (isset($_SESSION['error'])) : ?>
        <div class="error">
            <?php 
                echo $_SESSION['error'];
            ?>
        </div>
    <?php endif; ?>

            <br>
    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
    <div class="mb-3">
        <input type="text" name="username" required>
        <span></span>
        <label for="username">UserName</label>
    </div>
    <div class="mb-3">
        <input type="password" name="password" required>
        <span></span>
        <label for="password">Password</label>
    </div>
        <input type="submit" name="submit" value="Login"class="btn btn-primary">

    </form>
        <br>
        <p>ຖ້າຍັງບໍ່ທັນສະໝັກເປັນສະມາຊິກ ກົດທີ່ນີ້ເພື່ອ? <a href="register.php">ສະໝັກເປັນສະມາຊິກ</a></p>
</div>
</body>
</html>

<?php 

    if (isset($_SESSION['success']) || isset($_SESSION['error'])) {
        session_destroy();
    }

?>