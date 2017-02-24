<?php
  //iniciamos sesión
  session_start();
  //si existe la variable de sesión error la guardamos
  if(isset($_SESSION ['error'])){
    $error=$_SESSION['error'];
  }
  //destruimos la sesión para no poder llegar de manera indirecta a ninguna página posterior a la de login
  session_destroy();
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
    <link href="css/custom.css" rel="stylesheet">

    <!-- JS -->
    <script type="text/javascript" src="js/validacion.js"> </script>
    <!-- <script>function formulario(f) {
    if (f.inputUsuario.value   == '') { alert ('El nombre de usuario esta vacío.');
    f.inputUsuario.focus(); return false; }
    if (f.inputPassword.value   == '') { alert ('La contraseña está vacía.');
    f.inputPassword.focus(); return false; }
    }
  </script> -->

</head>

<body id="page-top">

    <header>
        <div class="header-content">
            <div class="header-content-inner">
                <h1 id="homeHeading"><img class="login" src="img/version1.png"></h1>
                <hr>
                <form name="Login" class="form-horizontal" onsubmit="return validar();" action="login.proc.php" method="POST">
                  <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-4">
                      <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Usuario" onfocus="document.Login.nombre.style.color='';" />
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-4">
                      <input type="password" class="form-control" name="password" id="password" placeholder="Contraseña" onfocus="document.Login.password.style.color='';" />
                    </div>
                  </div>
                  <?php if (isset($error)){
                  echo "<h4><font color="."red".">$error</font></h4>";
                  unset($error);
                  unset($_SESSION['error']);
                } else {
                  echo "<h4>Introduce usuario y contraseña</h4>";
                }
                  ?>
                  <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-4">
                      <button type="submit" class="btn btn-primary btn-xl">Entrar <i class="fa fa-check" aria-hidden="true"></i></button>
                    </div>
                  </div>
                </form>
                </div>
                <br/>
            <p>¿Aún no eres usuario? Regístrate <a href="alta_usuario.php">aquí</a>.</p>
        </div>
    </header>

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/creative.min.js"></script>

</body>

</html>
