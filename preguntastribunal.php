<?php
  //iniciamos sesión - SIEMPRE TIENE QUE ESTAR EN LA PRIMERA LÍNEA
  session_start();
  include("conexion.proc.php");
  extract($_REQUEST);
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
                      <a class="page-scroll" href="cerrarsesion.proc.php">Logout <i class="fa fa-sign-out" aria-hidden="true"></i></a>
                  </li>
              </ul>
          </div>
          <!-- /.navbar-collapse -->
      </div>
      <!-- /.container-fluid -->
  </nav>

  <div class="header22">
    <br/><br/><br/>
    <h1 id="homeHeading"><?php echo "<h4>Bienvenido, ".$_SESSION['nombre']."</h4>"; ?></h1>
    <hr>
    <p>INTRODUCE LAS NOTAS QUE CONSIDERES DEL PROYECTO <?php echo $pro_id; ?></p>
    <?php
        if(isset($_SESSION['nombre']) ){
        // echo "<p>Hola, bienvenido ".$_SESSION['nombre']."!</p>";
    ?>

<form Name="preguntastribuna" action="notatribunal.proc.php" method="post" >
<?php

$alunombre = array();
$aluid = array();
//primero realizamos una consulta para obtener las matriculas de los integrantes del proyecto seleccionado.
$consulta= "SELECT usa_id FROM  tbl_participantes WHERE pro_id =". $_REQUEST['pro_id'];


$resultado= mysqli_query($conexion, $consulta) or die (mysqli_error());

$id_proyecto=$_REQUEST['pro_id'];

//ahora para cada matricula haremos otra consulta para sacar los  nombres de cada matricula
while($fila = mysqli_fetch_array($resultado)){

    $consulta = "SELECT usa_nombre FROM tbl_usuarioalumno WHERE usa_id =".$fila['usa_id'];

    $alunombre_alumnos= mysqli_query($conexion, $consulta) or die (mysqli_error());

    while($nombre_alumno = mysqli_fetch_array($alunombre_alumnos)){

      //y ahora meteremos cada nombre en la array creada antes
      array_push($alunombre, $nombre_alumno['usa_nombre']);
      array_push($aluid, $fila['usa_id']);
    }

  }

$cont=0;
//y ahora para cada nombre de la array hacemos una consulta para generar las preguntas a cada alumno
  foreach ($alunombre as $nom_alu) {




        $sql= "SELECT * FROM tbl_preguntastribunal WHERE pt_id < 5";

        //echo $sql;
        $preguntas_tribunal= mysqli_query($conexion, $sql) or die (mysqli_error());



        while($pregunta = mysqli_fetch_array($preguntas_tribunal)){


          if($pregunta['pt_id']  == 1 ){
          echo "<h3>Valoración de la presentación oral de ".$nom_alu." </h4><br/>";
          }
          //echo $nom_alu;
          //echo $aluid[$cont];
          //echo"<div class='col-lg-12' style='background-color:grey;'>";


          //aqui generamos dinamicamente una array de inputs para luego al hacer el submit obtener las notas de cada pregunta y cada alumno
          echo"<label>".$pregunta['pt_pregunta']."</label>


          <input type='number' name='notas[]' min='0' max='10' value='5'> <br><br><br>";
          echo"<input type='hidden' name='idpreguntas[]' value='".$pregunta['pt_id']."' >";
          echo"<input type='hidden' name='matriculas[]' value=".$aluid[$cont]." style='display:none;'>";
          echo"<input type='hidden' name='proyecto' value='".$id_proyecto."' >";



        }
        echo"<br>";
        $cont++;



  }
      //".$aluid[$cont]."-".$pregunta['id_pregunta_tribunal']."
      //y ahora generamos las preguntas globales de la presentación

        $sql= "SELECT * FROM tbl_preguntastribunal WHERE pt_id >= 5";

        //echo $sql;
        $preguntas_tribunal= mysqli_query($conexion, $sql) or die (mysqli_error());


        while($pregunta = mysqli_fetch_array($preguntas_tribunal)){

          if($pregunta['pt_id']  == 5){
          echo "<h3>Valoración del contenido de la presentación (global) </h3><br/><br/>";

          }
          echo"<label>".$pregunta['pt_pregunta']."</label>

          <input type='number' name='notas_globales[]' min='0' max='10' value='5'> <br><br><br>";

          echo"<input type='hidden' value=".$pregunta['pt_id']." name='pt_id[]' >";



        }
           } else {
        //como han intentado acceder de manera incorrecta, redirigimos a la página login.php con un mensaje de error
        $_SESSION['error']="Tienes que loguearte primero!";

        echo "sesion mal";
        header("location: login.php");
      }


  ?>
  <input type='submit' name='Enviar'><br/>
</form><br><br>
</div>
</body>
</html>
