<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
    <script type="text/javascript" src="assets/js/jquery-3.4.0.min.js"></script>
    <script type="text/javascript" src="assets/js/mdb.min.js"></script>
    <script type="text/javascript" src="jquery-latest.js"></script>
    <title>Sensor Photodioda</title>

    <script type="text/javascript">
        var refreshid = setInterval(function() {
            $('#responsecontainer').load('server.php');
        }, 10);
    </script>
</head>

<body>
    <p style="background-image: url('kodingperangkat.jpg');">
    <!-- tempat untuk tampilan grafik -->
    <div class="container text-center">
        <h1 style="background-color:DodgerBlue;">
       <span>Laporan Pembacaan Cahaya Menggunakan </span> <p></p>
    <span>Sensor Photodioda</span></h1>
        <p>(Data Yang ditampilkan adalah 20 data terakhir)</p>
    </div>

    <!-- Div untuk grafik -->
    <div class="container">
        <div class="container text-center" id="responsecontainer">
        </div>
    </div>
</body>

</html>