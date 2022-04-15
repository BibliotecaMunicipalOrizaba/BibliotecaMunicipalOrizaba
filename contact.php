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
							<li role="presentation"><a href="gallery.php" >Galeria</a></li>
							<li role="presentation"><a href="contact.php" class="active">CONTACTO</a></li>
                            <li role="presentation"><a href="Aceder.php"><i class="fas fa-user-plus"></i></i></a></li>			
						</ul>
					</div>
				</div>		
            </div><!--/.container-->
        </nav><!--/nav-->		
    </header><!--/header-->	
	
	<div class="map">
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3775.793717705255!2d-97.09767398562651!3d18.85183776388025!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x85c502a5f6d0f915%3A0xcc12c5d3bfb52d1a!2sBiblioteca%20P%C3%BAblica%20Municipal%20Jos%C3%A9%20Bernardo%20Couto%20y%20P%C3%A9rez!5e0!3m2!1ses-419!2smx!4v1627312879949!5m2!1ses-419!2smx" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy">
		</iframe>
	</div>


	
	<section class="contact-page">
        <div class="container">
            <div class="text-center">        
                <h2>Deja tu mensaje</h2>
                <p>Manda un mensaje directo a la administracion</p>
            </div> 
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
                <form id="main-contact-form" class="contact-form" name="contact-form" method="post" action="funciones_php/enviar.php">
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>Nombre *</label>
                            <input type="text" name="name" style="border-radius: 5px" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label>Email *</label>
                            <input type="email" name="email" class="form-control" required>
                            <div class="form-group">
                            <label>Asunto *</label>
                            <input type="text" name="asunto" class="form-control" required>
                        </div>
                            <div class="form-group">
                            <label>Mensaje *</label>
                            <textarea name="msg" id="msg" required class="form-control" rows="8"></textarea>
                        </div>                        
                        <div class="form-group">
                            <button type="submit" name="enviar" value="ENVIAR" class="btn btn-primary btn-lg" required="required">Enviar Ahora</button>
                        </div>
                        </div>
                        
                                               
                    </div>
                    <div class="col-sm-5">
                        <div style="text-align:center;padding:1em 0;"> <h3><a style="text-decoration:none;" href="https://www.zeitverschiebung.net/es/timezone/america--mexico_city"><span style="color:gray;">Hora actual en</span><br />America/Mexico_City</a></h3> <iframe src="https://www.zeitverschiebung.net/clock-widget-iframe-v2?language=es&size=medium&timezone=America%2FMexico_City" width="100%" height="115" frameborder="0" seamless></iframe> </div>
                        
                            <!-- weather widget start --><center><span style="color:gray;">Clima actual:</span><center><div id="m-booked-weather-bl250-67223"> <div class="booked-wzs-250-175 weather-customize" style="background-color:#137AE9;width:250px;" id="width1"> <div class="booked-wzs-250-175_in"> <div class="booked-wzs-250-175-data"> <div class="booked-wzs-250-175-left-img wrz-01"> </div> <div class="booked-wzs-250-175-right"> <div class="booked-wzs-day-deck"> <div class="booked-wzs-day-val"> <div class="booked-wzs-day-number"><span class="plus">+</span>24</div> <div class="booked-wzs-day-dergee"> <div class="booked-wzs-day-dergee-val">&deg;</div> <div class="booked-wzs-day-dergee-name">C</div> </div> </div> <div class="booked-wzs-day"> <div class="booked-wzs-day-d">H: <span class="plus">+</span>25&deg;</div> <div class="booked-wzs-day-n">L: <span class="plus">+</span>13&deg;</div> </div> </div> <div class="booked-wzs-250-175-info"> <div class="booked-wzs-250-175-city smolest">Orizaba (Veracruz) </div> <div class="booked-wzs-250-175-date">Lunes, 21 Febrero</div> <div class="booked-wzs-left"> <span class="booked-wzs-bottom-l">Previsión para 7 días</span> </div> </div> </div> </div> <table cellpadding="0" cellspacing="0" class="booked-wzs-table-250"> <tr> <td>Mar</td> <td>Mié</td> <td>Juv</td> <td>Vie</td> <td>Sáb</td> <td>Dom</td> </tr> <tr> <td class="week-day-ico"><div class="wrz-sml wrzs-01"></div></td> <td class="week-day-ico"><div class="wrz-sml wrzs-01"></div></td> <td class="week-day-ico"><div class="wrz-sml wrzs-01"></div></td> <td class="week-day-ico"><div class="wrz-sml wrzs-18"></div></td> <td class="week-day-ico"><div class="wrz-sml wrzs-18"></div></td> <td class="week-day-ico"><div class="wrz-sml wrzs-18"></div></td> </tr> <tr> <td class="week-day-val"><span class="plus">+</span>28&deg;</td> <td class="week-day-val"><span class="plus">+</span>27&deg;</td> <td class="week-day-val"><span class="plus">+</span>28&deg;</td> <td class="week-day-val"><span class="plus">+</span>25&deg;</td> <td class="week-day-val"><span class="plus">+</span>22&deg;</td> <td class="week-day-val"><span class="plus">+</span>21&deg;</td> </tr> <tr> <td class="week-day-val"><span class="plus">+</span>15&deg;</td> <td class="week-day-val"><span class="plus">+</span>14&deg;</td> <td class="week-day-val"><span class="plus">+</span>14&deg;</td> <td class="week-day-val"><span class="plus">+</span>16&deg;</td> <td class="week-day-val"><span class="plus">+</span>15&deg;</td> <td class="week-day-val"><span class="plus">+</span>14&deg;</td> </tr> </table> </div> </div> </div><script type="text/javascript"> var css_file=document.createElement("link"); var widgetUrl = location.href; css_file.setAttribute("rel","stylesheet"); css_file.setAttribute("type","text/css"); css_file.setAttribute("href",'https://s.bookcdn.com/css/w/booked-wzs-widget-275.css?v=0.0.1'); document.getElementsByTagName("head")[0].appendChild(css_file); function setWidgetData_67223(data) { if(typeof(data) != 'undefined' && data.results.length > 0) { for(var i = 0; i < data.results.length; ++i) { var objMainBlock = document.getElementById('m-booked-weather-bl250-67223'); if(objMainBlock !== null) { var copyBlock = document.getElementById('m-bookew-weather-copy-'+data.results[i].widget_type); objMainBlock.innerHTML = data.results[i].html_code; if(copyBlock !== null) objMainBlock.appendChild(copyBlock); } } } else { alert('data=undefined||data.results is empty'); } } var widgetSrc = "https://widgets.booked.net/weather/info?action=get_weather_info;ver=7;cityID=7063;type=3;scode=124;ltid=3458;domid=583;anc_id=52848;countday=undefined;cmetric=1;wlangID=4;color=137AE9;wwidth=250;header_color=ffffff;text_color=333333;link_color=08488D;border_form=1;footer_color=ffffff;footer_text_color=333333;transparent=0;v=0.0.1";widgetSrc += ';ref=' + widgetUrl;widgetSrc += ';rand_id=67223';var weatherBookedScript = document.createElement("script"); weatherBookedScript.setAttribute("type", "text/javascript"); weatherBookedScript.src = widgetSrc; document.body.appendChild(weatherBookedScript) </script><!-- weather widget end -->
                        </div>
                
                </form>
                <?php 
                 include('funcionesphp/enviar.php');
                ?> 
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page-->
	
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
