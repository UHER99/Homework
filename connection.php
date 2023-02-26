<?php 
class conn{
    private $host = "localhost";
    private $user = "root";
    private $pass = "";
    private $dbname = "shoping";
    public $conn;

    function connect(){
    $conn = new mysqli($this->host, $this->user, $this->pass, $this->dbname);
    return $conn;
}

}
?>