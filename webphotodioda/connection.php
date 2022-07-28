<?php  
$hostname = "localhost";
$username = "root";
$password = "";
$database = "iot_photodioda";

$koneksi = mysqli_connect($hostname,$username,$password,$database);

//check koneksi
if(mysqli_connect_errno()){
    echo "koneksi database gagal : " .mysqli_connect_error();

}
?>