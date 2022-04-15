<?php
$nombre = $_SESSION['user'];

 	?>
 <script src="https://kit.fontawesome.com/7de388b156.js" crossorigin="anonymous"></script>
 <div id="wrapper">
        <!-- a este menu falta cambiarle el estilo de iconos asi como tamaño y color si se puede igual fuente -->
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="font-family: 'Caveat';">

            <!-- Brand and toggle get grouped for better mobile display -->
            
            <div class="navbar-header">
            <a class="navbar-brand"  href="#">BIBLIOTECA MUNICIPAL-ADMINISTRADOR</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
              
            
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">  

                 <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-fw fa-user"></i>  <?php //echo $user; ?> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="#" target="contenedor"><i class="fa fa-fw fa-user"></i> Perfil:<b style="color:green;"> <?php  echo $nombre; ?></b></a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="../login/logout.php"><i class="fa fa-fw fa-power-off" style="color:red;"><b style="color:red;"></i> Cerrar Sesión</a></b>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">

                <ul class="nav navbar-nav side-nav" >
                    <li class="active">
                        <a href="inicio.php"><i class="fas fa-house-user fa-2x" style="color:#0CB3BE;"></i> Inicio</a>
                    </li>
                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#visitas"><i class="fas fa-book-reader" style="color:#BBECF9;"></i> &nbsp;Visitas&nbsp;<i class="fas fa-chevron-down" style="color:#BBECF9;"></i></a>
                <ul id="visitas" class="collapse">
                    
                    <li>
                        <a href="visitas.php"><i class="fa fa-fw fa-globe" style="color:#0CB3BE;"></i> Visitas Virtuales</a>
                    </li> 

                    <li>
                        <a href="RegistroU.php"><i class="fas fa-head-side-mask fa-sm" style="color:#0CB3BE;"></i> Visitas presenciales</a>
                    </li>
                    <li>
                        <a href="Acervo.php"><i class="fas fa-file-signature fa-sm" style="color:#0CB3BE"></i> Acervo</a>
                    </li>
                </ul>
            </li>






            <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#mantenimiento"><i class="fa fa-fw fa-book" style="color:#BBECF9;"></i> Libros <i class="fas fa-chevron-down" style="color:#BBECF9;"></i></a>
                <ul id="mantenimiento" class="collapse">
                    
                    <li>
                        <a href="libros.php"><i class="fas fa-book-medical fa-sm" style="color:#0CB3BE"></i> Libros Digitales</a>
                    </li> 

                    <li>
                        <a href="categoria_libro.php"><i class="fas fa-swatchbook" style="color:#0CB3BE"></i> Categorias</a>
                    </li>
                    <li>
                        <a href="subcategoria_libro.php"><i class="fas fa-swatchbook" style="color:#0CB3BE"></i> Subcategorias</a>
                    </li>
                </ul>
            </li>

             <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#prestamo"><i class="fas fa-handshake" style="color:#BBECF9;"></i> Prestamos <i class="fas fa-chevron-down" style="color:#BBECF9;"></i></a>
                <ul id="prestamo" class="collapse">
                    <li>
                        <a href="prestar_libro.php"><i class="fas fa-hand-holding-medical" style="color:#0CB3BE"></i> Prestar Libro</a>
                    </li>
                    <li>
                        <a href="Lista_prestamos_libros.php"><i class="far fa-list-alt" style="color:#0CB3BE"></i> Lista Prestamos</a>
                    </li>
                  
                </ul>
            </li>
            

            
                    <li>
                        <a href="lista_pdf.php"><i class="fa fa-fw fa-file-pdf-o" style="color:#BBECF9;"></i><i class="fas fa-arrow-up" style="color:#BBECF9;"></i> PDF</a>
                    </li>
               
                   
                    <li>
                        <a href="comentarios.php"><i class="fas fa-mail-bulk" style="color:#BBECF9;"></i> Comentarios</a>
                    </li>
                    <li>
                        <a href="suscriptores.php"><i class="fas fa-user-check" style="color:#BBECF9;"></i> Suscriptores</a>
                    </li>
                  
                    <li>
                        <a href="copiaSeguridad.php"><i class="fa fa-fw fa-database" style="color:#BBECF9;"></i><i class="fas fa-cloud-download-alt" style="color:#BBECF9;"></i> Respaldo</a>
                    </li>

                    

                    <li>
                        <a href="javascript:;" data-toggle="collapse" data-target="#cuentas"><i class="fas fa-id-card-alt" style="color:#BBECF9;"></i> Cuentas <i class="fas fa-chevron-down" style="color:#BBECF9;"></i></a>
                <ul id="cuentas" class="collapse">
                <li>
                        <a href="usuarios.php"><i class="fas fa-users-cog" style="color:#0CB3BE"></i> Administradores</a>
                    </li>
                    <li>
                        <a href="estudiantes.php"><i class="fas fa-user-friends" style="color:#0CB3BE"></i> Prestamistas</a>
                    </li>
                    <li>
                        <a href="visitantes.php"><i class="fa fa-fw fa-users" style="color:#0CB3BE"></i> Usuarios</a>
                    </li>
                  
                </ul>
            </li>


                    
             
                     <li>
                        <a href="../login/logout.php"><i class="fa fa-fw fa-power-off" style="color:red;"></i> Cerrar sesion</a>
                    </li>
                </ul>
            </div>

            <!-- /.navbar-collapse -->
        </nav>