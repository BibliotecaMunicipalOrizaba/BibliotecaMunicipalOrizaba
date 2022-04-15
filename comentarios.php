<?php
session_start();
include("admin/conexion.php");
if(isset($_SESSION['usuario']))
 {
?>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/es_LA/sdk.js#xfbml=1&version=v12.0" nonce="93Sit6pf"></script>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Biblioteca Virtual | Contacto</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">

</head>

<body>
	 <?php include ('includes/header.php');?>
	 <br>
	 <div id="contact-page" class="container">
    	<div class="bg">
	    	<div class="row">    		
	    		<div class="col-sm-12">    			   			
					<h2 class="title text-center">¿Como Llegar?<strong></strong></h2>    			    				    				
					<div id="gmap" class="contact-map">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3775.793717705255!2d-97.09767398562651!3d18.85183776388025!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85c502a5f6d0f915%3A0xcc12c5d3bfb52d1a!2sBiblioteca%20P%C3%BAblica%20Municipal%20Jos%C3%A9%20Bernardo%20Couto%20y%20P%C3%A9rez!5e0!3m2!1ses-419!2smx!4v1627312879949!5m2!1ses-419!2smx" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
					<br>
       <small>
      <a href="https://www.google.com.ni/maps/place/Biblioteca+P%C3%BAblica+Municipal+Jos%C3%A9+Bernardo+Couto+y+P%C3%A9rez/@18.8518378,-97.097674,17z/data=!3m1!4b1!4m5!3m4!1s0x85c502a5f6d0f915:0xcc12c5d3bfb52d1a!8m2!3d18.8517369!4d-97.0954531?hl=es"><B>Ver en Mapa<B></a>
       </small>
					</div>
				</div>			 		
			</div>  
			<br>
			<br>        	
			
	 

		<div class="row">  	
	    		<div class="col-sm-6">
	    			<div class="contact-form">
	    				<h2 class="title text-center">Buzon de opiniones</h2>
	    				<div class="status alert alert-success" style="display: none"></div>
				    	<form id="main-contact-form" action="funciones_php/validar_mensaje.php" class="contact-form row" name="contact-form" method="post">
				            <div class="form-group col-md-6">
				                <input type="text" name="nombre" class="form-control" required placeholder="Nombre">
				            </div>
				            <div class="form-group col-md-6">
				                <input type="email" name="email" class="form-control" required placeholder="Email">
				            </div>
				            <div class="form-group col-md-12">
				                <input type="text" name="asunto" class="form-control" required placeholder="Asunto">
				            </div>
				            <div class="form-group col-md-12">
				                <textarea name="mensaje" id="message" required class="form-control" rows="8" placeholder="Escribe tu mensaje"></textarea>
				            </div>                        
				            <div class="form-group col-md-12">
				                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Enviar Opinion">
				            </div>
				        </form>
	    			</div>
	    		</div>
	    		<div class="col-sm-6">
	    			<div class="contact-info">
	    				<h2 class="title text-center">Tu Opinion Nos Importa</h2>
	    				<address>
	    					<p>Deja tus comentarios en este apartado</p>
							<p>Sera almacenado en el servidor</p>
							<p>para su posterior, evaluacion</p>
							<p>por parte de la administracion.</p>
							<p>¡Es importante!</p>
							<p>Pues nos ayuda a mejorar el servicio</p>
							<div class="fb-comments" data-href="https://bibliotecamunicipalorizaba.000webhostapp.com/" data-width="450" data-numposts="3"></div>
	    				</address>
	    			</div>
    			</div>    			
	    	</div>  
    	</div>	
    </div><!--/#contact-page-->
	<?php 
include ("includes/footer2.php");
include ('includes/footer.php');
include ("includes/subfooter.php");?>

    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
    <script type="text/javascript" src="js/gmaps.js"></script>
	<script src="js/contact.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
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