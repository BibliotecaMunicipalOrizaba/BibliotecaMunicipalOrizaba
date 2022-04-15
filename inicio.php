<?php
session_start();
include("admin/conexion.php");
if(isset($_SESSION['usuario']))
 {

$consulta=mysqli_query($con, "select * from libros limit 0,6");
$nro_reg=mysqli_num_rows($consulta);
    if ($nro_reg==0){
	echo 'No Tienes libros en la Base de Datos';
	}
	$result=mysqli_query($con, "SELECT count(utc) as visitas from visitas");
   	$row = mysqli_fetch_array($result);
    $numero_visitas = $row["visitas"];
    $fechaMensaje =date("Y-m-d");
	$result2=mysqli_query($con, "SELECT count(utc) as visitas from visitas WHERE fecha_visita = '".$fechaMensaje."'");
    $row2 = mysqli_fetch_array($result2);
    $visitas_hoy = $row2["visitas"];
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="biblioteca virtual UNI">
    <title>Biblioteca Couto| Inicio</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">     
    <link rel="shortcut icon" href="images/iconolibreria.ico">
	<link href="css/style.css" rel="stylesheet" />
	<script src="https://kit.fontawesome.com/7de388b156.js" crossorigin="anonymous"></script>
	<!--
	<link rel ="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
	
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"> </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/poppers.js/1.12.9/udm/popper.min.js" > </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"> </script>-->
</head>
<body>
<!--barra de correo, telefono y login-->
<?php include ('includes/header.php');?>
<!--slider de imagenes-->
<?php include ('includes/slider.php');?>	
<section>
   <div class="container">
		<div class="row">
		<!--Menu lateral Izquierdo-->
			<?php //include ('includes/sidebarIzquierdo.php'); ?>
			<div class="col-sm-3"> <!--/Inicio de barra lateral izquierda-->
	<div class="left-sidebar">				
	    <div class="brands_products"><!--brands_products-->
			<h2>Categorias</h2>
			<div class="brands-name">
				<ul class="nav nav-pills nav-stacked">
			  
				<?php
							$caq=mysqli_query($con,"select * from categorias");
							while($catrow=mysqli_fetch_array($caq)){
								?>
								<li class="divider"></li>
								<li><a href="inicio.php?cat=<?php echo $catrow['id_categoria']; ?>"><?php echo $catrow['nombre_categoria']; ?></a></li>
								<?php
							}
						
						?>
				</ul>
			</div>
		</div><!--/brands_products-->
		    <div class="price-range"><!--price-range-->
				<h2>Visitas</h2>
				<div class="col-md-4">
				    <img src="images/home/visitas.png" width="60" height="60">
				</div>
				<div class="col-md-8">
					<h5><b><?php  echo $numero_visitas;?> Visitas Totales</b></h5>
					<h6><b><?php  echo $visitas_hoy;?> Visitas Hoy</b></h6>
				</div>
			</div><!--/price-range-->					
	</div>
</div> <!--fin de barra lateral izquierda-->
			<div class="col-sm-9 padding-right">
				<!--Contenido Central donde se muestran los libros-->
				<!--Cuadros con los libros obtenidos de la base de datos-->
                <div class="features_items">
				<h2 class="title text-center">Listado de Libros</h2>
			   <?php

        if (isset($_GET['cat'])) {
         $cat=$_GET['cat'];
        }
        else{
        $cat = "1";	
       // echo "<script>alert('No tenemos libros con esa categoria')</script>";
        }
		$query=mysqli_query($con,"select * from libros where id_categoria='$cat'");
		$queryone=mysqli_query($con,"select * from pdf");

		if (mysqli_num_rows($query) < 1) {
		//echo "<script>alert('No tenemos libros con esa categoria')</script>";
		 echo "<div class='col-sm-3'>";  
		 echo "<p style='color:red;'><b>No tenemos Libros para esta Categoria</b></p>"; 
		 echo "</div>";   	
		}
		else{
			
			while($row=mysqli_fetch_array($query)){
			
		        $id=$row['id_libro'];
				$foto=$row['foto'];
				$nombre=$row['nombre'];
				$descripcion=$row['descripcion'];
				$link=$row['url_descarga'];	
				
			?>



             <div class="col-sm-3">
					<div class="product-image-wrapper">
						<div class="single-products">
							<div class="productinfo text-center">
						<img src="admin/<?php echo $foto ?>" width="100" heigth="90">	 <p><?php echo $nombre ?></p>
						    <p><?php //echo $descripcion ?></p>
						    </div>
							    <div class="product-overlay">
									<div class="overlay-content">
						<img src="admin/<?php echo $foto ?>" width="150" heigth="150">
									<p><?php echo $nombre ?></p>
									<?php $queryone=mysqli_query($con,"select id_pdf from pdf where id_libro='$id'"); 
									while($row=mysqli_fetch_array($queryone)){
										$id=$row['id_pdf'];}?>
									
									<a href="admin/pdf/archivo.php?id=<?php echo $id?>" class="btn btn-default add-to-cart">
									<i class="fa fa-download"></i>Ver y Descargar</a>
									<!-- boton leer online por si se acaba el espacio en servidor
									<a href="<?php //echo $link?>" class="btn btn-default add-to-cart"><i class="fa fa-download"></i>Leer Online</a>-->
                                     </div>
									 
								</div>
					    </div>
					</div>
			   </div>
			   
         <?php } }  ?>
         <br>
					<!--Tabs-->
			     <div class="row">	<?php// include ('includes/tabs.php');?> </div>
					<!--slider de abajo-->
					<?php //include ('includes/sliderInferior.php');?> 
					<?php //include ('includes/tabs.php');?> 					
				</div>
			</div>
		</div>
	</section>
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
	
	
	
</body>

</html>
<?php include "log.php"; ?>
<?php
}else{
    echo '<script> window.location="index.php"; </script>';
}
?>