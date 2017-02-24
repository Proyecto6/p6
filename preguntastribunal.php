
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
 
<!-- optionally if you need to use a theme, then include the theme file as mentioned below -->
<script src="themes/krajee-svg/theme.js"></script>
 
<!-- optionally if you need translation for your language then include locale file as mentioned below -->
<script src="js/locales/es.js"></script>

</head>
<body>
  <?php
     

      if(isset($_SESSION['nombre']) ){
        echo "<p>Hola, bienvenido ".$_SESSION['nombre']."!</p>";

     


  ?>

<form Name="preguntastribuna" action="notatribunal.proc.php" method="post" >
<?php

$alunombre = array();
$aluid = array();
//primero realizamos una consulta para obtener las matriculas de los integrantes del proyecto seleccionado.
$consulta= "SELECT usa_id FROM  tbl_participantes WHERE pro_id =". $_REQUEST['pro_id']; 


$resultado= mysqli_query($conexion, $consulta) or die (mysqli_error());



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
          echo "<h3>Valoració de la presentació oral de ".$nom_alu." </h4>";
          }
          //echo $nom_alu;
          //echo $aluid[$cont];
          //echo"<div class='col-lg-12' style='background-color:grey;'>";


          //aqui generamos dinamicamente una array de inputs para luego al hacer el submit obtener las notas de cada pregunta y cada alumno
          echo"<label>".$pregunta['pt_pregunta']."</label> 


          <input type='number' name='notas[]' min='0' max='10' value='5'> <br><br><br>";
          echo"<input type='hidden' name='idpreguntas[]' value='".$pregunta['pt_id']."' >";
          echo"<input type='hidden' name='matriculas[]' value=".$aluid[$cont]." style='display:none;'>";
          
        
        }
        echo"<br></div>";
        $cont++;
      
    
        
  }
      //".$aluid[$cont]."-".$pregunta['id_pregunta_tribunal']."
      //y ahora generamos las preguntas globales de la presentación

        $sql= "SELECT * FROM tbl_preguntastribunal WHERE pt_id >= 5"; 

        //echo $sql;
        $preguntas_tribunal= mysqli_query($conexion, $sql) or die (mysqli_error());


        while($pregunta = mysqli_fetch_array($preguntas_tribunal)){ 

          if($pregunta['pt_id']  == 5){
          echo "<h3>Valoració del contingut de la presentació (global) </h3>";
    
          }               
          echo"<label>".$pregunta['pt_pregunta']."</label> 

          <input type='number' name='notas_globales[]' min='0' max='10' value='5'> <br><br><br>";

          echo"<input type='hidden' value=".$pregunta['pt_id']." name='pt_id[]' >";



        }
           }
     else {
        //como han intentado acceder de manera incorrecta, redirigimos a la página login.php con un mensaje de error
        $_SESSION['error']="Tienes que loguearte primero!";
        
        echo "sesion mal";
        header("location: login.php");
      }
   
      
  ?>
  <input type='submit' name='Enviar'> 
  </form>
</body>
</html>
<footer>
</footer>
