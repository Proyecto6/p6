<?php

  //iniciamos sesión - SIEMPRE TIENE QUE ESTAR EN LA PRIMERA LÍNEA
  session_start();
  include("conexion.proc.php");
                 
extract($_REQUEST);
//primero hacemos una consulta para obtener el id de tribunal a partir del id proyecto
    $sql = "SELECT `usp_id` FROM `tbl_proyecto` WHERE pt_id =".$_REQUEST['pt_id'];

    $resultado= mysqli_query($conexion, $sql) or die (mysqli_error());

    while($fila = mysqli_fetch_array($resultado)){  

    $id_tribunal = $fila['usp_id'];
      
    } 

//ahora hacemos otra connsulta para obtener los id integrante segun la matricula del alumno

for ($cont=0; $cont < count($notas) ; $cont++) { 

  $sql = "SELECT `id_integrante` FROM `bd_mem_app`.`tbl_integrante_proyecto` WHERE matricula_alumno = ".$matriculas[$cont];

    $resultado= mysqli_query($conexion, $sql) or die (mysqli_error());

    while($fila = mysqli_fetch_array($resultado)){  

      $sql = "INSERT INTO `tbl_notas_tribunal` (`id_pregunta_tribunal`, `id_tribunal`, `valor_nota`, `id_integrante`) VALUES ( ".$idpreguntas[$cont].", ".$id_tribunal.", ".$notas[$cont].", ".$fila['id_integrante'].")";


    } 

    //una vez echo el sql, ejecutamos la consuta.
      echo "<br>";
      echo $notas[$cont]." ".$idpreguntas[$cont]." ".$matriculas[$cont]."<br>";
      echo $sql;  

$resultado= mysqli_query($conexion, $sql) or die (mysqli_error());

}
?>