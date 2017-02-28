<?php
  //iniciamos sesión - SIEMPRE TIENE QUE ESTAR EN LA PRIMERA LÍNEA
  session_start();
  include("conexion.proc.php");

  extract($_REQUEST);

	$sql = "SELECT * FROM tbl_notaalumno inner join `tbl_participantes` on tbl_participantes.part_id = tbl_notaalumno.part_id inner join tbl_preguntasalumno on tbl_preguntasalumno.pa_id=tbl_notaalumno.pa_id WHERE pro_id=".$_REQUEST['pro_id'];

	echo $sql;

	 $resultado= mysqli_query($conexion, $sql) or die (mysqli_error());

$numero=1;
?>

<html>
  <head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = google.visualization.arrayToDataTable([
          ['Notas', 'Numero de notas'],
          ['1',     <?php echo $numero; ?>],
          ['2',      2],
          ['3',  2],
          ['4', 2],
          ['5',    7],
          ['6',    7],
          ['7',    7],
          ['8',    7],
          ['9',    7],
          ['10',    7],
        ]);

        var options = {
          title: 'Notas'
        };

        var chart = new google.visualization.PieChart(document.getElementById('piechart'));

        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="piechart" style="width: 900px; height: 500px;"></div>
  </body>
</html>