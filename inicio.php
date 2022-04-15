<?php
session_start();
include("conexion.php");
if(isset($_SESSION['user']))
 {?>

<?php

$result=mysqli_query($con, "SELECT count(utc) as visitas from visitas");
$row = mysqli_fetch_array($result);
    $nvisitas = $row["visitas"];

$visitas = "select * from visitas";
$visitas2 = mysqli_query($con, $visitas);
$tvisitas = mysqli_num_rows($visitas2);


$peticion = "select * from libros";
$resultado = mysqli_query($con, $peticion);
$contados = mysqli_num_rows($resultado);

$peticion2 = "select * from comentarios";
$resultado2 = mysqli_query($con, $peticion2);
$contados2 = mysqli_num_rows($resultado2);

$peticion3 = "select * from visitantes";
$resultado3 = mysqli_query($con, $peticion3);
$contados3 = mysqli_num_rows($resultado3);

$peticion5 = "select * from administrador_biblioteca";
$resultado5 = mysqli_query($con, $peticion5);
$contados5 = mysqli_num_rows($resultado5);

$peticion6 = "select * from usuario_estudiante";
$resultado6 = mysqli_query($con, $peticion6);
$contados6 = mysqli_num_rows($resultado6);

$peticion7 = "select * from acervo";
$resultado7 = mysqli_query($con, $peticion7);
$contados7 = mysqli_num_rows($resultado7);

$peticion77 = "select * from acervo where seccion='Donacion'";
$resultado77 = mysqli_query($con, $peticion77);
$contados77 = mysqli_num_rows($resultado77);

$peticion777 = "select * from acervo where seccion='DGB'";
$resultado777 = mysqli_query($con, $peticion777);
$contados777 = mysqli_num_rows($resultado777);

$peticion8 = "select * from registrousuarios";
$resultado8 = mysqli_query($con, $peticion8);
$contados8 = mysqli_num_rows($resultado8);


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
    <!-- Libreria de Bootstrap-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- hojas de estilo css -->
    <link href="css/sb-admin.css" rel="stylesheet">
    <!-- graficos morris -->
    <link href="css/morris.css" rel="stylesheet">
    <!-- fuentes -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/7de388b156.js" crossorigin="anonymous"></script>
</head>
<body>
   <?php include('navegacion.php');?>
        <div id="page-wrapper">
            <div class="container-fluid">
                <!-- Cabecera-->
                <div class="row">
                    <div class="col-md-12 col-xs-12 col-lg-12">
                        <center><h3 class="page-header">
                            <small><img src="images/logo.png" class="img-responsive" width="200" height="200"></small><B>  Administracion de Biblioteca</B> </h3>
                    </div></center>
                </div>
                <!-- /.inicio de fila row-->
                <div class="row">
                   
                
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-warning">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                    <i class="fas fa-atlas fa-5x" ></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">Libros En Plataforma</div>
                                        <div>Libros subidos</div>
                                        Total:
                                        <B> <?php  echo $contados;?></B>
                                    </div>
                                </div>
                            </div>
                            <a href="libros.php">
                                <div class="panel-body">
                                    <span class="pull-left">Ver Libros digitales ahora</span>
                                    <span class="pull-right">IR <i class="fas fa-sign-in-alt"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                
                    


                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-success">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                    <i class="fas fa-comment-dots fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">Comentarios</div>
                                        <div>Historial de opiniones</div>
                                        Total :
                                        <B> <?php  echo $contados2;?></B>
                                    </div>
                                </div>
                            </div>
                            <a href="comentarios.php">
                                <div class="panel-body">
                                    <span class="pull-left">Ver Historial de Comentarios</span>
                                    <span class="pull-right">IR <i class="fas fa-sign-in-alt"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                   

                      <div class="col-lg-3 col-md-6">
                        <div class="panel panel-danger">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                    <i class="fas fa-address-book fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">Prestamistas</div>
                                        <div>Datos de prestamo</div>
                                          Total :
                                        <B> <?php echo $contados6;?></B>
                                    </div>
                                </div>
                            </div>
                            <a href="estudiantes.php">
                                <div class="panel-footer">
                                    <span class="pull-left">Ver Datos Prestamistas</span>
                                    <span class="pull-right">IR <i class="fas fa-sign-in-alt"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>

                      <div class="col-lg-3 col-md-6">
                        <div class="panel panel-info">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                    <i class="fas fa-users-cog fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">Administradores</div>
                                        <div>Cuentas Trabajadores</div>
                                          Total :
                                        <B> <?php  echo $contados5;?></B>
                                    </div>
                                </div>
                            </div>
                            <a href="usuarios.php">
                                <div class="panel-footer">
                                    <span class="pull-left">Ver Empleados</span>
                                    <span class="pull-right">IR <i class="fas fa-sign-in-alt"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <!--finje como separador de filas-->
                    <div class="row">
                    <div class="col">.</div>
                    <div class="col">.</div>
                    <div class="col">.</div>
                    <div class="col">.</div>
                    </div>






                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                    <i class="fas fa-book-reader fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">Acervo</div>
                                        <div>Libros fisicos: <B> <?php  echo $contados7;?></B></div>
                                       Donacion:<B> <?php  echo $contados77;?></B>
                                       <br>DGB:<B> <?php  echo $contados777;?></B>
                                    </div>
                                </div>
                            </div>
                            <a href="Acervo.php">
                                <div class="panel-footer">
                                    <span class="pull-left">Gestionar Acervo Fisico ahora</span>
                                    <span class="pull-right">IR <i class="fas fa-sign-in-alt"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    
                    
                      <div class="col-lg-3 col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fas fa-users fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">Visitantes</div>
                                        <div>Historial de visitantes presencial</div>
                                        Total:
                                       <B> <?php  echo $contados8;?></B>
                                    </div>
                                </div>
                            </div>
                            <a href="RegistroU.php">
                                <div class="panel-footer">
                                    <span class="pull-left">Ver archivo historico de visitas</span>
                                    <span class="pull-right">IR <i class="fas fa-sign-in-alt"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                    <i class="fas fa-id-card fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">Usuarios</div>
                                        <div>Cuentas creadas</div>
                                        Total:
                                       <B> <?php  echo $contados3;?></B>
                                    </div>
                                </div>
                            </div>
                            <a href="visitantes.php">
                                <div class="panel-footer">
                                    <span class="pull-left">Gestionar los Usuarios</span>
                                    <span class="pull-right">IR <i class="fas fa-sign-in-alt"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    
                    
                      <div class="col-lg-3 col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-globe fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">Visitas WEB</div>
                                        <div>Monitorear las Visitas</div>
                                        Total:
                                       <B> <?php  echo $tvisitas;?></B>
                                    </div>
                                </div>
                            </div>
                            <a href="visitas.php">
                                <div class="panel-footer">
                                    <span class="pull-left">Ver Historial de Visitas</span>
                                    <span class="pull-right">IR <i class="fas fa-sign-in-alt"></i></span>
                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>





                












                      
                    

                </div>
                <!-- /.row o fila -->
            </div>
            <!-- /.contenedor -->
        </div>
    </div>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>
</body>
</html>
<?php
}else{
    echo '<script> window.location="../login/login.php"; </script>';
}
?>
