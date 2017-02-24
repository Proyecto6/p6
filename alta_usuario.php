<?php
  //iniciamos sesión
  session_start();
  //si existe la variable de sesión error la guardamos
  if(isset($_SESSION ['error_usuario'])){
    $error_usuario=$_SESSION['error_usuario'];
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
    <link rel="stylesheet" href="css/custom.css">

    <!-- JS -->
  <script type="text/javascript" src="js/validacion.js"> </script>

</head>

<body id="page-top">

    <header>
        <div class="header-content">
            <div class="header-content-inner">
                <h1 id="homeHeading"><img class="login" src="img/version1.png"></h1>
                <hr>

                <form name="Alta" class="form-horizontal" action="alta_usuario.proc.php" onsubmit="return validar();" method="POST">
                  <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-4">
                      <input type="text" class="form-control" name="user" id="user" placeholder="Usuario" onfocus="document.Login.user.style.color='';" />
                    </div>
                  </div>
                  <div class="form-group">
                      <div class="col-sm-offset-4 col-sm-4">
                        <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Nombre" onfocus="document.Login.nombre.style.color='';" />
                      </div>
                  </div>
                  <div class="form-group">
                      <div class="col-sm-offset-4 col-sm-4">
                        <input type="password" class="form-control" name="password" id="password" placeholder="Contraseña" onfocus="document.Login.password.style.color='';" />
                      </div>
                  </div>
                  <?php if (isset($error_usuario)){
                  echo "<h4><font color="."red".">$error_usuario</font></h4>";
                  //unset($error_usuario);
                  unset($_SESSION['error_usuario']);
                } else {
                  echo "<h4>Introduce usuario y contraseña</h4>";
                }
                  ?>
                    <div class="form-group">
                      <div class="col-sm-offset-4 col-sm-4">
                        <button type="submit" class="btn btn-primary btn-xl">Registrarse</button>
                      </div>
                    </div>
                  </form>
                </div>

                <p>¿Tienes cuenta? Inicia sesión <a href="login.php">aquí</a>.</p>
            </div><br/>
    </header>

</body>
</html>
