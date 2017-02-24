<?php
  //iniciamos sesión - SIEMPRE TIENE QUE ESTAR EN LA PRIMERA LÍNEA
  session_start();
  include("conexion.proc.php");
                 
extract($_REQUEST);
//creamos una array en la cual almacenaremos los nombres de los integrantes
$nombres = array();
$matriculas = array();
//primero realizamos una consulta para obtener las matriculas de los integrantes del proyecto seleccionado.
$consulta= "SELECT matricula_alumno FROM  tbl_integrante_proyecto WHERE id_proyecto =". $id_proyecto; 


$resultado= mysqli_query($conexion, $consulta) or die (mysqli_error());



//ahora para cada matricula haremos otra consulta para sacar los  nombres de cada matricula
while($fila = mysqli_fetch_array($resultado)){	
		
		$consulta = "SELECT nombre_alumno FROM tbl_alumno WHERE matricula_alumno=".$fila['matricula_alumno']; 

		$nombres_alumnos= mysqli_query($conexion, $consulta) or die (mysqli_error());

		while($nombre_alumno = mysqli_fetch_array($nombres_alumnos)){	

			//y ahora meteremos cada nombre en la array creada antes
			array_push($nombres, $nombre_alumno['nombre_alumno']); 
			array_push($matriculas, $fila['matricula_alumno']); 
		}

	}

$cont=0;
//y ahora para cada nombre de la array hacemos una consulta para generar las preguntas a cada alumno
	foreach ($nombres as $nom_alu) {

		
				

				$sql= "SELECT * FROM tbl_pregunta_tribunal WHERE id_pregunta_tribunal < 5"; 

				//echo $sql;
				$preguntas_tribunal= mysqli_query($conexion, $sql) or die (mysqli_error());
				
				
echo"<div class='col-lg-12' style='background-color:#B9B9B9, border-radius: 25px;'>";
				while($pregunta = mysqli_fetch_array($preguntas_tribunal)){	

					
					if($pregunta['id_pregunta_tribunal']  == 1 ){				
					echo "<h3>Valoració de la presentació oral de ".$nom_alu." </h4>";
					}
					//echo $nom_alu;
					//echo $matriculas[$cont];
					//echo"<div class='col-lg-12' style='background-color:grey;'>";


					//aqui generamos dinamicamente una array de inputs para luego al hacer el submit obtener las notas de cada pregunta y cada alumno
					echo"<label>".$pregunta['pregunta_tribunal']."</label> 


					<input type='number' name='notas[]' min='0' max='10' value='5'> <br><br><br>";
					echo"<input type='hidden' name='idpreguntas[]' value='".$pregunta['id_pregunta_tribunal']."' >";
					echo"<input type='hidden' name='matriculas[]' value=".$matriculas[$cont]." style='display:none;'>";
					
				
				}
				echo"<br></div>";
				$cont++;
			
		
				
	}
			//".$matriculas[$cont]."-".$pregunta['id_pregunta_tribunal']."
			//y ahora generamos las preguntas globales de la presentación

				$sql= "SELECT * FROM tbl_pregunta_tribunal WHERE id_pregunta_tribunal >= 5"; 

				//echo $sql;
				$preguntas_tribunal= mysqli_query($conexion, $sql) or die (mysqli_error());


				while($pregunta = mysqli_fetch_array($preguntas_tribunal)){	

					if($pregunta['id_pregunta_tribunal']  == 5){
					echo "<h3>Valoració del contingut de la presentació (global) </h3>";
		
					}								
					echo"<label>".$pregunta['pregunta_tribunal']."</label> 

					<input type='number' name='notas_globales[]' min='0' max='10' value='5'> <br><br><br>";

					echo"<input type='hidden' value=".$pregunta['id_pregunta_tribunal']." name='id_pregunta_global[]' >";

				}
				   }
     else {
        //como han intentado acceder de manera incorrecta, redirigimos a la página login.php con un mensaje de error
        $_SESSION['error']="Tienes que loguearte primero!";
        
        echo "sesion mal";
        header("location: login.php");
      }   


mysqli_close($conexion);
//echo '</select>';

?>