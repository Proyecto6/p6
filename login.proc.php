<?php
	//iniciamos sesion (siempre tiene que estar en la primera linea)
	session_start();
	//incluimos el fichero conexion.proc.php que realiza la conexión a MySQL
	include("conexion.proc.php");
	
	//generamos la consulta para encontrar usuario Y contraseña
	$sqlalumno = "SELECT * FROM tbl_usuarioalumno WHERE usa_user = '$_REQUEST[nombre]' AND usa_password = '$_REQUEST[password]'";

	$sqlexterno = "SELECT * FROM tbl_usuarioexterno WHERE use_user = '$_REQUEST[nombre]' AND use_password = '$_REQUEST[password]'";

	$sqlprofesor = "SELECT * FROM tbl_usuarioprof WHERE usp_user = '$_REQUEST[nombre]' AND usp_password = '$_REQUEST[password]'";
	

	//ejecutamos la consulta
	echo $sqlalumno."<br>";
	echo $sqlexterno."<br>";
	echo $sqlprofesor."<br>";

	$rstalumno = mysqli_query($conexion,$sqlalumno);
	$rstexterno = mysqli_query($conexion,$sqlexterno);
	$rstprofesor = mysqli_query($conexion,$sqlprofesor);
	//si la consulta devuelve un registro se ha encontrado coincidencia de usuario y contraseña con lo que el usuario es correcto


	if(mysqli_num_rows($rstalumno)!=0){
		//extraemos los datos de ese usuario para poder coger el nivel de acceso
		$datos_alumno=mysqli_fetch_array($rstalumno);

		//creamos la variable de sesión alias
		$_SESSION['id']=$datos_alumno['usa_id'];
		$_SESSION['nombre']=$datos_alumno['usa_nombre'];
		$_SESSION['tipo_id']=$datos_alumno['tipo_id'];

		echo "buscar bien alu";
		
        //redirigimos a la página principal de los demas.
		header("location: mainalumno.php");
		echo "alu ok <br>";
		}
	elseif(mysqli_num_rows($rstexterno)!=0){
		//extraemos los datos de ese usuario para poder coger el nivel de acceso
		$datos_externo=mysqli_fetch_array($rstexterno);

		//creamos la variable de sesión alias
		$_SESSION['id']=$datos_externo['use_id'];
		$_SESSION['nombre']=$datos_externo['use_nombre'];
		$_SESSION['tipo_id']=$datos_externo['tipo_id'];
			echo "buscar bien exter";	 
            //redirigimos a la página principal de los demas
		header("location: mainalumno.php");
		echo "exter ok";
    }
	elseif(mysqli_num_rows($rstprofesor)!=0){
		//extraemos los datos de ese usuario para poder coger el nivel de acceso
		$datos_profesor=mysqli_fetch_array($rstprofesor);
		//creamos la variable de sesión alias
		$_SESSION['id']=$datos_profesor['usp_id'];
		$_SESSION['nombre']=$datos_profesor['usp_nombre'];
		$_SESSION['tipo_id']=$datos_profesor['tipo_id'];
		echo "buscar bien profe";
     	//redirigimos a la página principal de profesores
		header("location: mainprofesores.php");
		echo"profe ok";
     }
  else {
		//como no se ha encontrado usuario y contraseña, mandamos a la página login.php un mensaje de error
		$_SESSION['error']="Usuario o contraseña incorrectos";
		header("location: login.php");
		echo "no exite";
	}
	
	
	
?>
