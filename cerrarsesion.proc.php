<?php
//Cierra sesión y lo lleva a login.php
session_start();
session_destroy();
header("Location: login.php");
?>
