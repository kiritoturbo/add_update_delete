<?php
    $conn = new mysqli('localhost','root','','outadd_update_remove');

    if($conn){
        // echo "kết nối thành công";
    }else{
        die(mysqli_error($conn));
    }
?>