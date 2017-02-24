<?php
	//iniciamos sesion (siempre tiene que estar en la primera linea)
	session_start();
	//incluimos el fichero conexion.proc.php que realiza la conexión a MySQL
	include("conexion.proc.php");
	 extract($_REQUEST);

  $sql = "SELECT * FROM tbl_usuarioexterno WHERE use_user ='".$_REQUEST['user']."'";
  $sql2 = "SELECT * FROM tbl_usuarioalumno WHERE usa_user ='".$_REQUEST['user']."'";	
  $sql3 = "SELECT * FROM tbl_usuarioprof WHERE usp_user ='".$_REQUEST['user']."'";		
  //ejecutamos la consulta
	$resultado = mysqli_query($conexion,$sql);
	$resultado2 = mysqli_query($conexion,$sql2);
	$resultado3 = mysqli_query($conexion,$sql3);
echo $sql."<br>";
echo $sql2."<br>";
echo $sql3."<br>";
// mira si el campo esta vacio.
if($_REQUEST['user']!="" & $_REQUEST['password']!="" & $_REQUEST['nombre']!=""){
	//si la consulta devuelve un registro se ha encontrado coincidencia de nombre de recurso
	if(mysqli_num_rows($resultado)>0){

		if(mysqli_num_rows($resultado2)>0){

		$_SESSION['error_usuario']="El usuario ya está registrado";
		header("location: alta_usuario.php");
			
			if(mysqli_num_rows($resultado3)>0){

		$_SESSION['error_usuario']="El usuario ya está registrado";
		header("location: alta_usuario.php");
		}
		}
		//si nos devuelve registros significa que ese recurso ya existe
		//$datos_recursos=mysqli_fetch_array($resultado);

		$_SESSION['error_usuario']="El usuario ya está registrado";
		header("location: alta_usuario.php");
	} else {
		//como no se ha encontrado coincidencias realizamos el registro
		
		$sql = "INSERT INTO `tbl_usuarioexterno` (`use_nombre`, `use_password`, `use_user`, `tipo_id`) VALUES
				('$_REQUEST[nombre]', '$_REQUEST[password]', '$_REQUEST[user]', 3)";


		echo $sql;
		$anadir = mysqli_query($conexion,$sql);

	
	       header("location: login.php");
	}

	
}else{
	$_SESSION['error_usuario']="Hay un campo vacio.";
	header("location: alta_usuario.php");
}
?>
	