<?php
  //iniciamos sesión - SIEMPRE TIENE QUE ESTAR EN LA PRIMERA LÍNEA
  session_start();
  include("conexion.proc.php");
?>

<!DOCTYPE html>
<html lang="en">

<head>

    <!-- Etiquetas meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Página web Vote It">
    <meta name="author" content="Sergi, Eric, Alejandro">

    <!-- Título -->
    <title>VOTE IT</title>

    <!-- CSS Bootstrap -->
    <link href="vendor/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Fuentes -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

    <!-- CSS -->
    <link href="css/main.css" rel="stylesheet">

    <!-- JS -->
    <script type="text/javascript" src="js/validacion.js"> </script>
    <script type="text/javascript" src="funciones.js"></script>

</head>

<body id="page-top">

  <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
      <div class="container-fluid">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                  <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
              </button>
              <a class="navbar-brand page-scroll" href="#page-top">VOTE IT</a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav navbar-right">
                  <li>
                      <a><?php if(isset($_SESSION['nombre'])) { echo "<p>Bienvenido, ".$_SESSION['nombre']."</p>"; }
                      ?>
                  </li>
                  <li>
                      <a class="page-scroll" href="cerrarsesion.proc.php">Logout</a>
                  </li>
              </ul>
          </div>
          <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
  </nav>
<?php
    if(isset($_SESSION['nombre']) ){
    echo "<p>Bienvenido, ".$_SESSION['nombre']."</p>";
?>
<?php

    $sql = "SELECT * FROM tbl_proyecto WHERE pro_estado = 1";
    $proyectos = mysqli_query($conexion, $sql);

        if(mysqli_num_rows($proyectos)>0){
          while($proyecto = mysqli_fetch_array($proyectos)){

            echo "<br/>";
            echo "<a href='preguntasalumno.php?pro_id=".$proyecto['pro_id']."'>".$proyecto['pro_titulo']."</a><br>".$proyecto['pro_fecha']."<br>";
          }
        } else {
          echo "No hay proyectos!";
          }
    } else {
        //como han intentado acceder de manera incorrecta, redirigimos a la página login.php con un mensaje de error
        $_SESSION['error']="Tienes que iniciar sesión primero!";

        echo "No hay sesión";
        header("location: login.php");
    }

?>
</body>
</html>
<footer>
</footer>
