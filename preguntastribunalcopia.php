
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

</script>

<script>
/*
window.onload = function(foto1){


        var imagen = document.getElementById("star1");
        imagen.addEventListener('mouseover',cambiarImagen);
        //imagen.addEventListener('mouseout',imagenIniciar);

        var imagen2 = document.getElementById("star2");
        imagen2.addEventListener('mouseover',cambiarImagen2);
        //imagen2.addEventListener('mouseout',imagenIniciar2);

        var imagen3 = document.getElementById("star3");
        imagen3.addEventListener('mouseover',cambiarImagen3);
        //imagen3.addEventListener('mouseout',imagenIniciar3);

        var imagen4 = document.getElementById("star4");
        imagen4.addEventListener('mouseover',cambiarImagen4);
        //imagen4.addEventListener('mouseout',imagenIniciar4);

        var imagen5 = document.getElementById("star5");
        imagen5.addEventListener('mouseover',cambiarImagen5);
        imagen5.addEventListener('mouseout',imagenIniciar5);

        var pic1=0;
        var pic2=0;
        var pic3=0;
        var pic4=0;
        var pic5=0;

        if ( pic5 = 1){
           imagen5.addEventListener('mouseover',cambiarImagen5);
            imagen4.addEventListener(cambiarImagen4);
             imagen3.addEventListener(cambiarImagen3);
              imagen2.addEventListener(cambiarImagen2);
               imagen.addEventListener(cambiarImagen);
        
        } 

         
        
        function cambiarImagen(){
            this.setAttribute('src','img/png/shape.png');
            pic1= 1;    
        }
        function imagenIniciar(){
            this.setAttribute('src',"img/png/favorite.png");
            
        }
        function cambiarImagen2(){
            this.setAttribute('src','img/png/shape.png');
            pic2 =0;            ;  
        }
        function imagenIniciar2(){
            this.setAttribute('src',"img/png/favorite.png");
            
            
          
        }
        function cambiarImagen3(){
            this.setAttribute('src','img/png/shape.png');

             pic3 =0;  
        }
        function imagenIniciar3(){
            this.setAttribute('src',"img/png/favorite.png");
            
        }
        function cambiarImagen4(){
            this.setAttribute('src','img/png/shape.png');  
        }
        function imagenIniciar4(){
            this.setAttribute('src',"img/png/favorite.png");

        }
        function cambiarImagen5(){
            this.setAttribute('src','img/png/shape.png');
            imagen5.addEventListener('mouseover',cambiarImagen5);
            imagen4.addEventListener(cambiarImagen4);
             imagen3.addEventListener(cambiarImagen3);
              imagen2.addEventListener(cambiarImagen2);
               imagen.addEventListener(cambiarImagen);
              
        }
        function imagenIniciar5(){
            this.setAttribute('src',"img/png/favorite.png");
            imagen4.addEventListener(imagenIniciar4);
             imagen3.addEventListener(imagenIniciar3);
              imagen2.addEventListener(imagenIniciar2);
               imagen.addEventListener(imagenIniciar);
        }
}
/*
  


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

<form Name="preguntastribuna" action="notatribunal.proc.php" method="post" >

  <?php


  
   extract($_REQUEST);
   $sql =" SELECT * from tbl_proyecto  
     inner join tbl_participantes on tbl_proyecto.pro_id=tbl_participantes.pro_id
   inner join tbl_usuarioalumno on tbl_participantes.usa_id= tbl_usuarioalumno.usa_id  
   inner JOIN tbl_preguntastribunal on tbl_proyecto.pro_id=tbl_preguntastribunal.pro_id
   where tbl_proyecto.pro_id= ".$_REQUEST['pro_id'];

   //echo $sql;
    $preguntas = mysqli_query($conexion, $sql);
   
    if(mysqli_num_rows($preguntas)>0){
      
      while($pregunta = mysqli_fetch_array($preguntas)){

        


        

        echo $pregunta['usa_nombre']."<br><p>".$pregunta['pt_pregunta']."</p> <br><label for='input-1' class='control-label'>Puntua</label><br>";
        

       
 

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
  </form>
</body>
</html>
<footer>
</footer>
<?php 

"SELECT * from tbl_proyecto inner join tbl_participantes on tbl_proyecto.pro_id=tbl_participantes.pro_id inner join tbl_usuarioalumno on tbl_participantes.usa_id= tbl_usuarioalumno.usa_id inner join tbl_notaalumno on tbl_participantes.part_id=tbl_notaalumno.part_id inner JOIN tbl_preguntasalumno on tbl_notaalumno.pa_id=tbl_preguntasalumno.pa_id where tbl_proyecto.pro_id= 1 ORDER BY tbl_preguntasalumno.pa_id LIMIT 0,1"
 ?>