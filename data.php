<?php 
    header('Content-Type: application/json');

    require_once 'connection/connection.php';

    $sqlQuery = " select id, name, price from sp_product ";
    $result = mysqli_query($con, $sqlQuery);

    $data = array();
    foreach ($result as $row) {
        $data[] = $row;
    }

    mysqli_close($con);

    echo json_encode($data);

?>