<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Biblioteca Municipal de Orizaba "José Bernardo Couto y Peréz"</title>
	<link rel="shortcut icon" href="images/icono2.ico">

    <!-- Bootstrap -->
    <link href="css/cssD/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="css/cssD/font-awesome.min.css">
	<link rel="stylesheet" href="css/cssD/animate.css">
	<link href="css/cssD/animate.min.css" rel="stylesheet"> 
	<link href="css/cssD/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/cssD/fontello.css">
    <link rel="stylesheet" href="css/cssD/animation.css">
    <link rel="stylesheet" href="css/cssD/fontello-codes.css">	
    <link rel="stylesheet" href="css/cssD/fontello-embedded.css">
    <link rel="stylesheet" href="css/cssD/fontello-ie7.css">
    <link rel="stylesheet" href="css/cssD/fontello-ie7-codes.css">
	<script src="https://kit.fontawesome.com/7de388b156.js" crossorigin="anonymous"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>	
	<header id="header">
        <nav class="navbar navbar-default navbar-static-top" role="banner">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                   <div class="navbar-brand">
						<a href="index.html"><h4>Biblioteca Municipal </h4><h5>Jose Bernardo Couto Y Perez</h5></a>
					</div><img src="img/logo2.png" width="100" height="80"/>
                </div>				
                <div class="navbar-collapse collapse">							
					<div class="menu">
						<ul class="nav nav-tabs" role="tablist">
							<li role="presentation"><a href="index.php" >Inicio</a></li>
							<li role="presentation"><a href="about.php">¿Quienes somos?</a></li>
							<li role="presentation"><a href="questions.php">PREGUNTAS frecuentes</a></li>
							<li role="presentation"><a href="gallery.php" class="active">Galeria</a></li>
							<li role="presentation"><a href="contact.php">Contacto</a></li>
							<li role="presentation"><a href="Aceder.php"><i class="fas fa-user-plus"></i></i></a></li>						
						</ul>
					</div>
				</div>		
            </div><!--/.container-->
        </nav><!--/nav-->		
    </header><!--/header-->	
	
	<div class="gallery">
		<div class="text-center">
			<h2>Galeria de eventos</h2>
			<p>En este espacio ,subiremos imagenes iconicas de nuestra participacion en eventos importantes</p>
		</div>
		<div class="container">		
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="img/8.jpg" alt="" class="img-responsive"/>
					<figcaption>
						<h4>Visitas guiadas</h4>
						<p>Personal capacitado conservando las menidas de sanidad.</p>				
					</figcaption>			
				</figure>
			</div>
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="img/9.jpg" alt="" class="img-responsive"/>
					<figcaption>
						<h4>Apertura del Museo del libro</h4>
						<p>Pide una visita guiada en donde te explicaran acerca del origen del libro.</p>				
					</figcaption>			
				</figure>
			</div>
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="img/10.jpg" alt="" class="img-responsive"/>
					<figcaption>
						<h4>Lee por un juguete</h4>
						<p>Una de las dinamicas que mas nos gustan incentivando el habito lector.</p>				
					</figcaption>			
				</figure>
			</div>
		</div>
		
		<div class="container">
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="img/11.jpg" alt="" class="img-responsive"/>
					<figcaption>
						<h4>Dia internacional del libro</h4>
						<p>Tenemos evento tanto en tu bliblioteca celebrando a los libros como externos.</p>				
					</figcaption>			
				</figure>
			</div>
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="img/12.jpg" alt="" class="img-responsive"/>
					<figcaption>
						<h4>Dia internacional del libro - Poliforum</h4>
						<p>Salimos a divulgar grandes obras literarias y realizamos dinamicas.</p>				
					</figcaption>			
				</figure>
			</div>
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="img/13.jpg" alt="" class="img-responsive"/>
					<figcaption>
						<h4>Dia del niño</h4>
						<p>Por que son el futuro del pais dejemos que viajen a travez de aventuras leyendo.</p>				
					</figcaption>			
				</figure>
			</div>
		</div>
	</div>	
	<?php
    include "includes/includesD/footer.php";
    include "includes/includesD/subfooter.php";
    ?>
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jsD/jquery.js"></script>		
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/jsD/bootstrap.min.js"></script>	
	<script src="js/jsD/wow.min.js"></script>
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>		
  </body>
</html>