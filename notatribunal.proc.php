<?php

  //iniciamos sesión - SIEMPRE TIENE QUE ESTAR EN LA PRIMERA LÍNEA
  session_start();
  include("conexion.proc.php");
                 
extract($_REQUEST);

//ahora hacemos otra connsulta para obtener los id integrante segun la matricula del alumno

for ($cont=0; $cont < count($notas) ; $cont++) { 

  $sql = "SELECT `part_id` FROM `tbl_participantes` WHERE usa_id = ".$matriculas[$cont];

    $resultado= mysqli_query($conexion, $sql) or die (mysqli_error());

    while($fila = mysqli_fetch_array($resultado)){  

      $sql = "INSERT INTO `tbl_notatribunal` (`nt_id`,`pt_id`, `nt_nota`, `part_id`) VALUES (NULL, '".$idpreguntas[$cont]."', '".$notas[$cont]."', '".$fila['part_id']."');";


    } 

    //una vez echo el sql, ejecutamos la consuta.
      echo "<br>";
      echo $notas[$cont]." ".$idpreguntas[$cont]." ".$matriculas[$cont]."<br>";
      echo $sql;  

$resultado= mysqli_query($conexion, $sql) or die (mysqli_error());



}

$sql = "UPDATE `tbl_proyecto` SET `pro_estado` = '0' WHERE `tbl_proyecto`.`pro_id` = ".$proyecto ;

$resultado= mysqli_query($conexion, $sql) or die (mysqli_error());


header("location: mainprofesores.php");

echo "\\\\\\\\".$proyecto."////////" ;

?>