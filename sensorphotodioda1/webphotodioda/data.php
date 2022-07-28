<?php
$hostname = "localhost";
$username = "root";
$password = "";
$database = "iot_photodioda";

//$koneksi = mysqli_connect($host, $user, $pw, $db);
$koneksi = mysqli_connect($hostname,$username,$password,$database);

if (!$koneksi) {
    echo 'Gagal Menghubungkan dengan database';
}

// baca Id tertinggi
$sql_ID = mysqli_query($koneksi, "SELECT MAX(ID) FROM sen_photodioda");
// baca informasi ppm dan jadi sumbu y
$hasilSensor = mysqli_query($koneksi, "SELECT hasilSensor FROM sen_photodioda ORDER BY ID ASC");
$keterangan = mysqli_query($koneksi, "SELECT keterangan FROM sen_photodioda ORDER BY ID ASC");
// baca informasi tanggal dan jadi sumbu x
$tanggal = mysqli_query($koneksi, "SELECT created FROM sen_photodioda ORDER BY ID ASC");
?>
<!-- tampilan -->
<div class="panel panel-primary">
    <div class="panel-heading">
        Website Sensor Photodioda
    </div>

    <div class="panel-body">
        <!-- canvas untuk baca sensor -->
        <canvas id="chart"></canvas>

        <!-- gambar grafik -->
        <script type="text/javascript">
            // baca id canvas tempat hasil sensor akan diletakkan
            var canvas = document.getElementById("chart");
            // letakkan data tanggal dan hasil baca sensor
            var data = {
                labels: [
                    <?php
                    while ($data_tanggal = mysqli_fetch_array($tanggal)) {
                        echo '"' . $data_tanggal['tanggal'] . '",';
                    }
                    ?>
                ],
                datasets: [{
                    label: "Tingkatcahaya ",
                    fill: true,
                    backgroundColor: "rgba(52, 231, 43, .2)",
                    borderColor: "rgba(52, 231, 43, 1)",
                    lineTension: 0.5,
                    pointRadius: 5,
                    data: [
                        <?php
                        while ($data_hasilSensor = mysqli_fetch_array($hasilSensor)) {
                            echo $data_hasilSensor['hasilSensor'].',';
                        }
                        ?>
                    ]
                }]
            };

            // opsi tampilan
            var option = {
                showLines: true,
                animation: {
                    duration: 0
                }
            };

            
            var myLineChart = Chart.Line(canvas, {
                data: data,
                options: option
            });
        </script>
    </div>
</div>