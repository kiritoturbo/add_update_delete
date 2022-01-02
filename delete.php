<?php
    include 'connect.php';
    if(isset($_GET['Id'])){
        $id = $_GET['Id'];

        $sql = "delete from `ttuser` where Id=$id";
        $result = mysqli_query($conn,$sql);
        if($result){
            // echo "xóa thành công";
            header('location:display.php');
        }else{
            die(mysqli_error($conn));
        }
    }
?>