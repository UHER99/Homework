<?php 

    require_once "connection/connection.php";
    $id = $_GET['GetID'];
    $query = " select id, price from sp_product where id='".$id."'";
    $result = mysqli_query($con,$query);

    while($row=mysqli_fetch_assoc($result))
    {
        $id = $row['id'];
        $price = $row['price'];
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" a href="css/bootstrap.css"/>
    <link rel="stylesheet" a href="box.css"/>
    <title>Document</title>
</head>
<body class="bg-dark">

        <div class="container">
            <div class="row">
                <div class="col-lg-6 m-auto">
                    <div class="card mt-5">
                        <div class="card-title">
                            <h3 class="bg-success text-white text-center py-3" style="font-family: saysettha ot;"> ປັບລາຄາສີນຄ້າ</h3>
                        </div>
                        <div class="card-body">

                            <form action="update.php?id=<?php echo $id ?>" method="post">
                                <input type="text" class="form-control mb-2" placeholder=" Price " name="price" value="<?php echo $price ?>">
                                <button class="btn btn-primary" name="update" style="font-family: saysettha ot;" onclick="return confirm('ທ່ານຕ້ອງການປັບປ່ຽນລາຄານີ້ເເທ້ ຫືຼ ບໍ')">ສົ່ງ</button>
                                <button class="bac" style="font-family: saysettha ot;">ຍ້ອນກັບ</button>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    
</body>
</html>