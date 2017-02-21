<?php
  //iniciamos sesión
  session_start();
  //si existe la variable de sesión error la guardamos
  if(isset($_SESSION ['error'])){
    $error=$_SESSION['error'];
    $error_usuario=$_SESSION['error_usuario'];
  }
  //destruimos la sesión para no poder llegar de manera indirecta a ninguna página posterior a la de login
  session_destroy();
?>


<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Mycontacts</title>
  <link rel="stylesheet" href="css/style.css">
  <script type="text/javascript" src="js/validacion.js"> </script>
</head>

<body>
 
  <h1 style="color:#43A047;">VOTE IT</h1>
  
           

   <form name="Login" action="alta_usuario.proc.php" onsubmit="return validar();">
    <p>Introduce tus datos para registrarte</p>
    
    <label>Usuario: </label><input type="text" id="nombre" name="nombre" placeholder="Usuario" required onfocus="document.Login.nombre.style.color='';" /><br/>
    <label>Contraseña: </label><input type="password" id="password" name="password" placeholder="Contraseña" required onfocus="document.Login.password.style.color='';"/><br/>
    <label for="email">Email: </label> <input type="email" name="email" placeholder="Correo" required /> <span class="form_hint">Formato correcto: "name@something.com"</span><br/>
     <!-- <li><label>Tu foto: </label><input id="foto" name="foto" type="file" ></li> -->
     <?php if (isset($error)){
                  echo "<h4>" . $error . "</h4>";
                  unset($error);
                  unset($_SESSION['error_usuario']); 
                  }
                  ?><br/>
      <button type="submit">Registrarse</button>
   
    </form>
  
</body>
</html>

