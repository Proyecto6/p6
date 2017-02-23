
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
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.css" rel="stylesheet">

<link href="css/star-rating.css" media="all" rel="stylesheet" type="text/css" />
 
<!-- optionally if you need to use a theme, then include the theme file as mentioned below -->
<link href="themes/krajee-svg/theme.css" media="all" rel="stylesheet" type="text/css" />
 
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.js"></script>
<script src="js/star-rating.js" type="text/javascript">
  
  // initialize with defaults
$("#input-id1").rating();
 
// with plugin options
$("#input-id1").rating({min:1, max:10, step:2, size:'lg'});
/*
var text_selected = gettext('Selected');
  var text_not_selected = gettext('Select');

   
  $('#input-1').on('change', function() {
       var template_id = $(this).closest('.rating-starts');
       $('#template_id').text(template_id);

       $("*").removeClass("layout-selected");
     $(this).closest('.template-exemples').addClass("layout-selected");

       $('.img_submit').text(text_not_selected)
       $(this).text(text_selected);
  });*/
</script>
 
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



        echo "<br><p>".$pregunta['pa_pregunta']."</p><br>".$pregunta['usa_nombre']."<br><p>nota:".$pregunta['na_nota']."</p> <br><label for='input-1' class='control-label'>Puntua</label><a href='notaalumno.proc.php?pa_id=".$pregunta['pa_id']."&part_id=".$pregunta['part_id']."'>
<input id='input-1' name='input-1' class='rating rating-loading' data-min='0' data-max='5' data-step='1'> ";




       
        echo "</a>";

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
<?php 

"SELECT * from tbl_proyecto inner join tbl_participantes on tbl_proyecto.pro_id=tbl_participantes.pro_id inner join tbl_usuarioalumno on tbl_participantes.usa_id= tbl_usuarioalumno.usa_id inner join tbl_notaalumno on tbl_participantes.part_id=tbl_notaalumno.part_id inner JOIN tbl_preguntasalumno on tbl_notaalumno.pa_id=tbl_preguntasalumno.pa_id where tbl_proyecto.pro_id= 1 ORDER BY tbl_preguntasalumno.pa_id LIMIT 0,1"
 ?>