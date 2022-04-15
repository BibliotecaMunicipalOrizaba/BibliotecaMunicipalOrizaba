<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Biblioteca Municipal de Orizaba "José Bernardo Couto y Peréz"</title>
    <link rel="shortcut icon" href="images/icono2.ico">
  </head>
  <body>	
  <?php
    include "includes/includesD/header.php";
    ?>
	
	<div class="slider">		
		<div id="about-slider">
			<div id="carousel-slider" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators visible-xs">
					<li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-slider" data-slide-to="1"></li>
					<li data-target="#carousel-slider" data-slide-to="2"></li>
				</ol>

				<div class="carousel-inner">
					<div class="item active">						
						<img src="img/2.jpg" class="img-responsive" alt=""> 
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">								
								<h2><span>Bienvenido...</span></h2>
							</div>
							<div class="col-md-10 col-md-offset-1">
								<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
									<p>Aqui puedes encontrar informacion adicional acerca de la biblioteca</p>
								</div>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.9s">								
								<form class="form-inline"  action="about.php">
									<div class="form-group">
										<button type="getnow"  class="btn btn-primary btn-lg" required="required">INSTALACIONES</button>
									</div>
									</form>
									<form class="form-inline" action="about.php">
									<div class="form-group">
										<button type="getnow" class="btn btn-primary btn-lg" required="required">MUSEO</button>
									</div>
								</form>
							</div>
						</div>
				    </div>
			
				    <div class="item">
						<img src="img/22.png" class="img-responsive" alt=""> 
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.0s">								<br>
							<br><br>
						<br><h6>Temporada de cursos de verano gratuitos!!</h6>
							</div>
							<div class="col-md-10 col-md-offset-1">
								<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
									<p >"RECUERDA MANTEN TU SANA DISTANCIA"</p>
								</div>
							</div>
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="1.6s">								
								<form  action="https://dgb.cultura.gob.mx/actividades_dgb.php"class="form-inline">
									<div class="form-group">
										<button type="livedemo" name="purchase" class="btn btn-primary btn-lg" required="required"  >MAS ACERCA DE</button>
									</div>
									<div class="form-group">
										<button type="getnow" name="subscribe" class="btn btn-primary btn-lg" required="required">OTROS EVENTOS</button>
									</div>
								</form>
							</div>
						</div>
				    </div> 
				    <div class="item">
						<img src="img/museo.jpg" class="img-responsive" alt=""> 
						<div class="carousel-caption">
							<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">								
								<h2>Visita "El Museo de la Historia del Libro"</h2>
							</div>
							<div class="col-md-10 col-md-offset-1">
								<div class="wow fadeInUp" data-wow-offset="0" data-wow-delay="0.6s">								
									<p>¡Este museo forma parte de las instalaciones de la biblioteca pregunta por el en modulo!</p>
								</div>
							</div>
							
						</div>
				    </div> 
				</div>
				
				<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
					<i class="fa fa-angle-left"></i> 
				</a>
				
				<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
					<i class="fa fa-angle-right"></i> 
				</a>
			</div> <!--/#carousel-slider-->
		</div><!--/#about-slider-->
	</div><!--/#slider-->
	
	<div class="about">
		<div class="container">
			<div class="text-center">
				<h2>Conoce tu Biblioteca P&uacute;blica</h2>
				<div class="col-md-10 col-md-offset-1">
				<h3> ¿Qué es una Biblioteca P&uacute;blica?</h3>					
				<p>Es una institución que te ofrece una diversidad de libros para que los consultes y los leas.
				Los servicios se proporcionan de manera gratuita para todas las personas sin excepción.
				Tú biblioteca es atendida por personal que ha sido capacitado, para la búsqueda de información que solicites; además se encarga también de conservar en buenas condiciones de uso tanto el acervo bibliográfico, como las instalaciones en las que se te brinda el servicio. </p>
				</div>
		
				<div class="col-md-6 col-sm-6 col-xs-6">
					<div class="btn-gamp"><a href="https://es.wikipedia.org/wiki/Biblioteca">Leer Mas</a></div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-6">
					<div class="gamp-btn"><a href="https://mega.nz/folder/gRwGVApI#cxSrWu713xtKo1oeWecijw">Videos</a></div>
				</div>
				
			</div>	
		</div>			
	</div>
	<hr>
	
	<div class="services">
		<div class="container">
			<div class="text-center">
				<h2>Datos historicos</h2>
			</div>
			<div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
				<i class="fa fa-heart-o"></i>
				<h3>Sobre el programa</h3>
				<p>               El estado de Veracruz cuenta aproximadamente con 518 bibliotecas y una de ellas es nuestra Biblioteca Municipal Jos&eacute; Bernardo Couto y P&eacute;rez, siendo el n&uacute;mero de colecci&oacute;n 335</p>
			</div>
			<div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
				<i class="fa fa-cloud"></i>
				<h3>Nombre</h3>
				<p>En honor al jurista, escritor, diplomático y académico mexicano orizabeño, recibió el apelativo de José Bernardo Couto y Pérez.<p>
			</div>
			<div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
				<i class="fa fa-book"></i>	
				<h3>Servicio</h3>
				<p>Nos encontramos laborando desde el 26 de abril de 1981, un lugar de encuentro, acceso libre y voluntario a la lectura </p>
			</div>
			<div class="col-md-3 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms">
				<i class="fa fa-gear"></i>	
				<h3>Protocolo de Bioseguridad</h3>
				<p>Nos enorgullece comentarte que la biblioteca cuenta con todas las medidas de seguridad para el ingreso de usuarios que ha sido basada en fases</p>
			</div>
		</div>			
	</div>
	
	<section class="action">
		<div class="container">
			<div class="left-text hidden-xs">
				<h4>Inicios</h4>
				<p><em>En 1962 el sindicato de empleados de la cervecería Moctezuma adquirió un terreno aproximadamente de 3 863 metros cuadrados.Este es el predio donde se edifica la biblioteca, la cual era un lugar de esparcimiento o área verde.La colonia de empleados de la Cervecería Moctezuma dona al municipio, dona esta área verde o plaza central donde se levanta la actual biblioteca.</p>
			</div>
			<div class="right-image hidden-xs"></div>
		</div>
	</section>
    <br>
    	<section class="action">
		<div class="container">
			<div class="left-text hidden-xs">
				<h4>Algo de historia</h4>
				<p><em>Aquí podemos apreciar una fotografía en donde se muestra el área verde que cada fin de semana era frecuentada
				por los ciudadanos, en el complejo actual a los alrededores de la biblioteca podemos ver que estas áreas verdes se mantienen fieles
				con juegos infantiles y canchas fomentando el deporte.
				</p>
			</div>
			<div class="right-image1 hidden-xs"></div>
		</div>
	</section>
     <br>
    	<section class="action">
		<div class="container">
			<div class="left-text hidden-xs">
				<h4>Durante</h4>
				<p><em>En el trienio 1979-1982 siendo presidente municipal de la ciudad de Orizaba el Arquitecto Isaías Rodríguez Vivas; realiza una de las obras más importantes en su gestión; la creación de la biblioteca pública municipal “José Bernardo Couto y Pérez” inaugurada en 26 de abril de 1981 por el gobernador Licenciado Agustín Acosta Lagunés.
				</p>
			</div>
			<div class="right-image2 hidden-xs"></div>
		</div>
	</section>
    
    <br>
    	<section class="action">
		<div class="container">
			<div class="left-text hidden-xs">
				<h4>Posteriormente</h4>
				<p><em>La biblioteca, fue ampliada con una segunda planta en abril del año 2000 bajo la presidencia municipal del Dr. Ángel Escudero Stadelman, lo que significó una consolidación del programa y actualmente esta es la estructura que ha tenido remodelaciones y adicciones tecnológicas como el museo entre otras áreas que puedes visitar.
				</p>
			</div>
			<div class="right-image3 hidden-xs"></div>
		</div>
	</section>
    <br>
    	<section class="action">
		<div class="container">
			<div class="left-text hidden-xs">
				<h4>Actualmente</h4>
				<p><em>La biblioteca brinda un servicio gratuito y unas areas verdes que fomentan el deporte. 
				Agradecemos el gran apoyo del Lic. Juan Manuel Diez Francos presidente municipal de Orizaba, Veracruz (2014-2017) y del Lic. Igor Fidel Roji López Director de Desarrollo humano por fortalecer la educación en nuestra ciudad.
				</p>
			</div>
			<div class="right-image4 hidden-xs"></div>
		</div>
	</section>
	
	<div class="gallery">
		<div class="text-center">
			<h2>Galeria</h2>
			<p>Te mostramos imagenes de los principios y cualidades con las que hemos guiado  los servicios de la biblioteca estos ultimos 30 años.</p>
		</div>
		<div class="container">		
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="img/88.jpg" alt="" class="img-responsive"/>
					<figcaption>
						<h4>shh hay gente estudiando</h4>
						<p>Dentro de la biblioteca tendras areas de lectura, computo , infantil, material digital, museo, visitas guiadas.</p>				
					</figcaption>			
				</figure>
			</div>
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="img/personal.jpg" alt="" class="img-responsive"/>
					<figcaption>
						<h4>Personal capacitado</h4>
						<p>
					Porque las bibliotecas son capaces de iluminar nuestras necesidades de conocimiento. Necesidades de conocimiento que van más allá que una simple búsqueda en Google, el personal esta a tu servicio para consultar el material que requieras.</p>				
					</figcaption>			
				</figure>
			</div>
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="img/33.jpg" alt="" class="img-responsive"/>
					<figcaption>
						<h4>Estamos para ayudarte</h4>
						<p>tienes dudas,necesitas una recomendacion, alguna queja, con toda confianza pregunta!!.</p>				
					</figcaption>			
				</figure>
			</div>
		</div>
		
		<div class="container">
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="img/44.jpg" alt="" class="img-responsive"/>
					<figcaption>
						<h4>El latido de la biblioteca tiene muchos corazones</h4>
						<p>Por eso cada que se puede participamos en eventos y se imparten cursos que van con toda la dedicacion para la ciudadania orizabeña.</p>				
					</figcaption>			
				</figure>
			</div>
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="img/municipio.jpg" alt="" class="img-responsive" />
					<figcaption>
						<h4>Somos parte de un programa sustentado por el municipio</h4>
						<p>El objetivo es Incentivar a la ciudadanía en general al habito de lectura y proporcionar un espacio tranquilo con el material necesario.</p>				
					</figcaption>			
				</figure>
			</div>
			<div class="col-md-4">
				<figure class="effect-marley">
					<img src="img/ultima.jpg" alt="" class="img-responsive"/>
					<figcaption>
						<h4>Esperamos tu visita</h4>
						<p>Y esto es algo que se debe tener muy en cuenta a la hora de pensar qué es una biblioteca. Una biblioteca son sus usuarios porfavor respeta el reglamento.</p>				
					</figcaption>			
				</figure>
			</div>
		</div>
	</div>
    <?php
    include "includes/includesD/footer.php";
    include "includes/includesD/subfooter.php";
	//include "includes/sliderInferior.php";
    ?>
	
	
	
	
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jsD/jquery.js"></script>		
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/jsD/bootstrap.min.js"></script>	
	<script src="js/jsD/wow.min.js"></script>
	<script src="https://kit.fontawesome.com/7de388b156.js" crossorigin="anonymous"></script>
	<script>
	wow = new WOW(
	 {
	
		}	) 
		.init();
	</script>	
  </body>
</html>
