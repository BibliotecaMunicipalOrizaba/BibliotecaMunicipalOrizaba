<html>
<head>
    <title>Acceder a la plataforma</title>
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
    <link rel="shortcut icon" href="images/icono2.ico">
    <link rel="stylesheet" type="text/css" href="css/cssD/index_style.css" />
<style>
    body {
		background-image: url(https://picsum.photos/2200/1900/?random);
		background-position: 25% 75%;
        position:absolute; z-index:1; width:100%; height:100%;
	  }
    </style>
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
							<li role="presentation"><a href="gallery.php" >Galeria</a></li>
							<li role="presentation"><a href="contact.php">CONTACTO</a></li>
                            <li role="presentation"><a href="Aceder.php" class="active"><i class="fas fa-user-plus"></i></i></a></li>			
						</ul>
					</div>
				</div>		
            </div><!--/.container-->
        </nav><!--/nav-->		
    </header><!--/header-->	
    <div id="allTheThings">
        <div id="member">
            <a href="login_usuario.php">
                <img src="img/user.svg" width="250px" height="auto"/><br />
               <b> &nbsp;Usuario</b>
            </a>
        </div>
        <div id="verticalLine">
            <div id="librarian">
                <a id="librarian-link" href="login/login.php">
                    <img src="img/admin.svg" width="250px" height="auto" /><br />
                    <b>&nbsp;&nbsp;&nbsp;Trabajador</b>
                </a>
            </div>
        </div>
    </div>
    <?php
  
    include "includes/includesD/subfooter.php";
    ?>
</body>
</html>