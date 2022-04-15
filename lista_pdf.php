<?php
session_start();
$nombre = $_SESSION['user'];

 	?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Biblioteca Publica Municipal de Orizaba|Admin</title>
    <link rel="shortcut icon" href="../images/icono2.ico">
    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="css/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link href="libros/css/estilo.css" rel="stylesheet">
<script src="libros/js/jquery.js"></script>
<script src="clientes/myjava.js"></script>

</head>
<body>
      <?php include('navegacion.php');?>
        <div id="page-wrapper">
          <div class="container-fluid">
             <br>
                <!-- Page Heading -->
            <div class="row">
              <div class="col-lg-12">
               <br>                
              </div>
              </div>
               <center><h1 class="page-header2">
                            <small><img src="images/logo.png" class="img-responsive" width="200" height="200"></small> Lista Libros PDF
                </h1></center>
              <!-- /.row -->
            <br> 
            <form action="subir_pdf.php">
                <center><input class="btn btn-primary" type="submit" value="Añadir PDF"></center>
            </form>  
            <br>       
            <table class="table table-sm table-striped">
             <thead class="thead-dark">
            <tr class="bg-primary">
                <td >Libro</td>
                <td>Titulo</td>
                <td>Descripcion</td>
                <td>Tamaño</td>
                <td>Tipo</td>
                <td>Accion</td>
                <td></td>
            </tr></thead>
        <?php
        include 'pdf/config.inc.php';
        $db=new Conect_MySql();
            $sql = "select * from pdf";
            $query = $db->execute($sql);
            while($datos=$db->fetch_row($query)){?>
            <tr>
                <td><?php echo $datos['id_libro']; ?></td>
                <td><?php echo $datos['titulo']; ?></td>
                <td><?php echo $datos['descripcion']; ?></td>
                <td><?php echo $datos['tamanio']; ?></td>
                <td><?php echo $datos['tipo']; ?></td>
                <td><button class="btn btn-secondary"><a href="pdf/archivo.php?id=<?php echo $datos['id_pdf']?>" target="_blank"><b>Ver</b></a></button></td>
                <td></td>
            </tr>
                
          <?php  } ?>
            
        </table>
   <!--fin del backup -->
                            
                       <!--fin de la restauracion -->
                <br>
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="js/jquery.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

</body>

</html>
