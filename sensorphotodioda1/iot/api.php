<?php
include 'koneksi.php';

$hasilSensor = $_GET['hasilSensor'];
$keterangan = $_GET['keterangan'];

$tanggal = date('Y-m-d H:i');
$sql = "INSERT INTO iot_photodioda VALUES (NULL,'".$hasilSensor."','".$keterangan."', '".$tanggal."')";

if (mysqli_query($koneksi, $sql)){
	echo "New record created successfully";
}else{
	echo "Error : ".$sql . "<br>" . mysqli_error($koneksi);
}
mysqli_close($koneksi);
?>