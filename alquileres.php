<?php
session_start();
include("admin/conexion.php");
if(isset($_SESSION['usuario']))
 {
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="biblioteca virtual UNI">
    <title>Libros Web</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">     
    <link rel="shortcut icon" href="images/iconolibreria.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head>
<body>
<!--barra de correo, telefono y login-->
<?php include ('includes/header.php');?>
<!--slider de imagenes-->
<?php //include ('includes/slider.php');?>	
	<br>
			<div class="container">
            <main>
			<header>
				<h3>Alquiler de espacios de estudio y recreativos en tu bliblioteca municipal</h3>
			</header>
            <h4>Incluye lo siguiente:</h4>
            <p>-Cañon(proyector y cortina para presentaciones)</p>
            <p>-Concesion de un equipo de computo durante la reunion</p>
            <p>-Sonido(bocina y microfono)</p>
            <p>-Servicio cafe (aplican restricciones)</p>
			<section>
				<link href="css/transiciones.css" rel="stylesheet" type="text/css"/>
				<figure>
					
					<center><img src="images/museo.jpg" width="250" height="250" border="0" class="paraCambioTam"/>
                    <img src="images/auditorio.jpg" width="250" height="250" border="0" class="paraCambioTam"/>
                    <img src="images/salon.jpg" width="250" height="250" border="0" class="paraCambioTam"/></center>
					
				</figure>
			</section>
            <h3>Terminos y Restricciones de estos servicios:</h3>
            <p>TERMINOS Y RESTRICCIONES:  
           <br>-NO SE PERMITE CLAVAR, PEGAR PROPAGANDA EN PAREDES DE LA BIBLIOTECA
           <br>-TRAER SUS EXTENSIONES ELECTRICAS PARA SU EVENTO SI VA A MANEJAR AUDIO (NO SE PERMITE TENER UN VOLUMEN DEMACIADO ALTO PARA NO MOLESTAR A OTRO USUARIOS)  
           <BR>-MANTENER LA PUERTA CERRADA DEL AUDITORIO
           <BR>-SI DARA EL SERVICIO DE CAFÉ (NO SALIR FUERA DE  SU AREA) 
           <BR>-EN CASO DE TRAER NIÑOS NO SE PERMITE QUE ANDEN JUGANDO DENTRO DE LA       BIBLIOTECA.
            </p>
		</main>
        
			</div>
	<br>
	<br>
	<!--pie de pagina-->
	<?php 
include ("includes/footer2.php");
include ('includes/footer.php');
include ("includes/subfooter.php");?>
	 <!--Librerias de Jquery, Bootstrap y otras mas--> 
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
	<link href="css/style.css" rel="stylesheet" />
	<script src="https://kit.fontawesome.com/7de388b156.js" crossorigin="anonymous"></script>
</body>
</html>

<?php include "log.php"; ?>
<?php
}else{
    echo '<script> window.location="index.php"; </script>';
}
?>