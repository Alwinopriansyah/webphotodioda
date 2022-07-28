<?php
    include("connection.php");
    $query = mysqli_query($koneksi, "SELECT * FROM sen_photodioda ORDER BY id DESC");
    $data = mysqli_fetch_array($query);
    $hasilSensor = $data['hasilSensor'];
    $keterangan = $data['keterangan'];
?>

    <div class="panel-body">
        <table border="2" style="width:100%" >
        <tr>
            <th><center>Nilai Sensor</center></th>
            <th><center>Keterangan</center></th>
        </tr>
        <tr>
            <td><?php echo $hasilSensor?></td>
            <td><?php echo $keterangan?></td>
        </tr>
    </table>

    </div>
