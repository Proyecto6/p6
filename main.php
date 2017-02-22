
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
  <script type="text/javascript" src="js/validacion.js"> </script>
</head>
<body>
  <?php
      if(isset($_SESSION['usa_nombre']) ){
        echo "<p>Hola, bienvenido ".$_SESSION['usa_nombre']."!</p>";


  ?>
  <h1>Hello world</h1>

  <?php
   echo "<h1> Hola ".$_SESSION['usa_nombre']." bienvenido! </h1>" ;
  
   $sql = "SELECT * from tbl_proyecto where pro_estado = 1";

    $proyectos = mysqli_query($conexion, $sql);

    if(mysqli_num_rows($proyectos)>0){
      
      while($proyecto = mysqli_fetch_array($proyectos)){

        echo $proyecto['pro_titulo']."<br>".$proyecto['pro_fecha']."<br>";

        }

      	}

      else{
        echo "No hay proyectos!";
      }
    }
     else {
        //como han intentado acceder de manera incorrecta, redirigimos a la página login.php con un mensaje de error
        $_SESSION['error']="PILLÍN! Tienes que loguearte primero!";
        
        echo "sesion mal";
        //header("location: login.php");
      }    
      
  ?>
</body>
</html>
<footer>
</footer>