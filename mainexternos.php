
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
        echo "<p>Hola, bienvenido ".$_SESSION['use_nombre']."!</p>";


  ?>


  <?php
  
  
   $sql = "SELECT * from tbl_proyecto where pro_estado = 1";

    $proyectos = mysqli_query($conexion, $sql);

    if(mysqli_num_rows($proyectos)>0){
      
      while($proyecto = mysqli_fetch_array($proyectos)){

        echo "<br><a href='preguntasalumno.php?pro_id=".$proyecto['pro_id']."'>".$proyecto['pro_titulo']."</a><br>".$proyecto['pro_fecha']."<br>";

        }

      	}

      else{
        echo "No hay proyectos!";
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