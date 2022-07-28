<?php
include('connection.php');

$hasilSensor = $_GET['hasilSensor'];
$keterangan = $_GET['keterangan'];
$tanggal = date('Y-m-d H:i:s');


return mysqli_query($koneksi, "INSERT INTO sen_photodioda VALUES('','$hasilSensor','$keterangan','$tanggal')");
?>