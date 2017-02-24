<?php
  //iniciamos sesión - SIEMPRE TIENE QUE ESTAR EN LA PRIMERA LÍNEA
  session_start();
  include("conexion.proc.php");


   extract($_REQUEST);

   echo $_REQUEST['pa_id']."<br>";
   echo $_REQUEST['part_id']."<br>";
   echo $_REQUEST['nota']."<br>";
   echo $_REQUEST['pro_id'];

   $sql ="INSERT INTO `tbl_notaalumno` ( `na_nota`, `pa_id`, `part_id`) VALUES (".$_REQUEST['nota'].", ".$_REQUEST['pa_id'].", ".$_REQUEST['part_id'].")";
   $ejec = mysqli_query($conexion, $sql);

   header("location: preguntasalumno.php?pro_id=".$_REQUEST['pro_id']."");


?>