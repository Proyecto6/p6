
<?php
  //iniciamos sesión - SIEMPRE TIENE QUE ESTAR EN LA PRIMERA LÍNEA
  session_start();
  include("conexion.proc.php");
                 
?>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>VoteIt</title>
  <link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="funciones.js"></script>
  <script type="text/javascript" src="js/validacion.js"> </script>

</head>
<body>
  <?php
     

      if(isset($_SESSION['use_nombre']) ){
        echo "<p>Hola, bienvenido ".$_SESSION['usa_nombre']."!</p>";}

      if(isset($_SESSION['usa_nombre']) ){
        echo "<p>Hola, bienvenido ".$_SESSION['usa_nombre']."!</p>";


  ?>


  <?php
  
    extract($_REQUEST);
   $sql =" SELECT * from tbl_proyecto  
   inner join tbl_participantes on tbl_proyecto.pro_id=tbl_participantes.pro_id
   inner join tbl_usuarioalumno on tbl_participantes.usa_id= tbl_usuarioalumno.usa_id 
   inner join tbl_notaalumno on tbl_participantes.part_id=tbl_notaalumno.part_id 
   inner JOIN tbl_preguntasalumno on tbl_notaalumno.pa_id=tbl_preguntasalumno.pa_id 
   where tbl_proyecto.pro_id= ".$_REQUEST['pro_id'];

   //echo $sql;

    $preguntas = mysqli_query($conexion, $sql);

    if(mysqli_num_rows($preguntas)>0){
      
      while($pregunta = mysqli_fetch_array($preguntas)){



        echo "<br><p>".$pregunta['pa_pregunta']."</p><br>".$pregunta['usa_nombre']."<br><p>nota:".$pregunta['na_nota']."</p>";


        $nota=$pregunta['na_nota'];
        echo "<a href='notaalumno.proc.php?na_nota=".$nota."&pa_id".$pregunta['pa_id']."&part_id".$pregunta['part_id']."'>ESTRELLAS</a>";

        }
        

      	}

      else{
        echo "No hay preguntas!";
      }
    }
     else {
        //como han intentado acceder de manera incorrecta, redirigimos a la página login.php con un mensaje de error
        $_SESSION['error']="Tienes que loguearte primero!";
        
        echo "sesion mal";
        header("location: login.php");
      }    
      
  ?>
</body>
</html>
<footer>
</footer>
