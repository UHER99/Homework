<style>
    h1{
        color: black;
        align-self: center;
    }
</style>
<?php
class insert{
    public $username;
    public $password;
    public $firstname;
    public $lastname;
    public $userlevel = "m";
    public $conn;

    function __construct($db){
        $this->conn = $db;
    }
    // function insert(){
    //     $passwordenc = md5($this->password);
    //     $query = "INSERT INTO user(username, password, firstname, lastname, userlevel) VALUES('".$this->username."', '".$passwordenc."', '".$this->firstname."', '".$this->lastname."', '".$this->userlevel."')";
    //     $this->conn->query($query);
    // }
    function selert(){
        $query = "SELECT * FROM user WHERE username = '$this->username' LIMIT 1";
        $result = $this->conn->query($query);
        return $result;
    }
    function row(){
        $row = $this->selert()->fetch_array();
        if ($row['username'] === $this->username) {
            echo "<h1>username ຂອງເຈົ້າຊໍ້າກັບ username ຄົນອື່ນ (ກາລຸນາປ້ອນຂໍ້ມູນໃໝ່)</h1>";
            
        }else {
            $passwordenc = md5($this->password);

            $query = "INSERT INTO user(username, password, firstname, lastname, userlevel) VALUES('".$this->username."', '".$passwordenc."', '".$this->firstname."', '".$this->lastname."', '".$this->userlevel."')";
            $result = $this->conn->query($query);

            if ($result) {
                $_SESSION['success'] = "";
                header("Location: index.php");
            } else {
                $_SESSION['error'] = "Something went wrong";
                header("Location: index.php");
            }
        }
    }
    function insert2(){
        $passwordenc = md5($this->password);

        $query = "SELECT * FROM user WHERE username = '$this->username' AND password = '$passwordenc'";

        $result = $this->conn->query($query);
        return $result;
    }
    function row2(){
        if (mysqli_num_rows($this->insert2()) == 1) {

            $row = mysqli_fetch_array($this->insert2());

            $_SESSION['userid'] = $row['id'];
            $_SESSION['user'] = $row['firstname'] . " " . $row['lastname'];
            $_SESSION['userlevel'] = $row['userlevel'];

            if ($_SESSION['userlevel'] == 'a') {
                header("Location: admin_page.php");
            }

            if ($_SESSION['userlevel'] == 'm') {
                header("Location: user_page.php");
            }
        } else {
                echo "<script type='text/javascript'>alert('User ຫຼື Password ບໍ່ຖືກຕ້ອງ');
                window.location='index.php';
                </script>";
        }
    }
}
?>