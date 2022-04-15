<?php
session_start();
$nombre = $_SESSION['user'];

 	?>
<script>
    window.onload = function(){
  var fecha = new Date(); //Fecha actual
  var mes = fecha.getMonth()+1; //obteniendo mes
  var dia = fecha.getDate(); //obteniendo dia
  var ano = fecha.getFullYear(); //obteniendo año
  if(dia<10)
    dia='0'+dia; //agrega cero si el menor de 10
  if(mes<10)
    mes='0'+mes //agrega cero si el menor de 10
  document.getElementById('txtFecha').value=ano+"-"+mes+"-"+dia;
}
    </script>
<script>//para que no se muestre el emergente de renvio de formulario
            if (window.history.replaceState) { // verificamos disponibilidad
                window.history.replaceState(null, null, window.location.href);
            }
        </script>

<?php
//print_r($_POST);


$txtID=(isset($_POST['txtID']))?$_POST['txtID']:"";
$txtFecha=(isset($_POST['txtFecha']))?$_POST['txtFecha']:"";
$txtNombre=(isset($_POST['txtNombre']))?$_POST['txtNombre']:"";
$txtEdad=(isset($_POST['txtEdad']))?$_POST['txtEdad']:"";
$txtGenero=(isset($_POST['txtGenero']))?$_POST['txtGenero']:"";
$txtArea=(isset($_POST['txtArea']))?$_POST['txtArea']:"";
$txtTemperatura=(isset($_POST['txtTemperatura']))?$_POST['txtTemperatura']:"";

$accion=(isset($_POST['accion']))?$_POST['accion']:"";


$accionAgregar="";
$accionModificar=$accionEliminar=$accionCancelar="disabled";
$mostrarModal=true;


include("conexion.php");


switch($accion){
    case "btnAgregar":
        if($txtNombre==""){
            $error['Nombre']="Escribe el nombre de usuario";
        }
        if($txtGenero==""){
            $error['Genero']="Selecciona Genero";
        }
        if($txtArea==""){
            $error['Area']="Cual es el area que entro";
        }
        if($txtTemperatura==""){
            $error['Temperatura']="Falta temperatura";
        }
        if(count($error)>0){
            $mostrarModal=true;
            break;

        }

        $sentencia=$pdo->prepare("INSERT INTO registrousuarios(ID,Fecha,Nombre,Edad,Genero,Area,Temperatura) 
        VALUES(:ID,:Fecha,:Nombre,:Edad,:Genero,:Area,:Temperatura)");
        $sentencia->bindParam(':ID',$txtID);
        $sentencia->bindParam(':Fecha',$txtFecha);
        $sentencia->bindParam(':Nombre',$txtNombre);
        $sentencia->bindParam(':Edad',$txtEdad);
        $sentencia->bindParam(':Genero',$txtGenero);
        $sentencia->bindParam(':Area',$txtArea);
        $sentencia->bindParam(':Temperatura',$txtTemperatura);
        $sentencia->execute();
        header('Location: RegistroU.php');
        
    break;
    case "btnModificar":
        $sentencia=$pdo->prepare("UPDATE registrousuarios SET 
        Fecha=:Fecha,
        Nombre=:Nombre,
        Edad=:Edad,
        Genero=:Genero,
        Area=:Area,
        Temperatura=:Temperatura WHERE 
        ID=:ID");

        $sentencia->bindParam(':ID',$txtID);
        $sentencia->bindParam(':Fecha',$txtFecha);
        $sentencia->bindParam(':Nombre',$txtNombre);
        $sentencia->bindParam(':Edad',$txtEdad);
        $sentencia->bindParam(':Genero',$txtGenero);
        $sentencia->bindParam(':Area',$txtArea);
        $sentencia->bindParam(':Temperatura',$txtTemperatura);
        $sentencia->execute();
        header('Location: RegistroU.php');


        echo "precionaste btnmodificar";
    break;
    case "btnEliminar":
        $sentencia=$pdo->prepare("DELETE FROM registrousuarios WHERE ID=:ID");
        $sentencia->bindParam(':ID',$txtID);
        $sentencia->execute();
        header('Location: RegistroU.php');



        echo "precionaste btneliminar";
    break;
    case "btnCancelar":
        header('Location: RegistroU.php');
    break;
    case "Seleccionar":
        $mostrarModal = false;
        $accionAgregar="disabled";
        $accionModificar="enabled";
        $accionEliminar="enabled";
        $accionCancelar="enabled";
    break;
}
$sentencia= $pdo->prepare("SELECT * FROM `registrousuarios` WHERE 1");
$sentencia->execute();
$listaUsuarios=$sentencia->fetchAll(PDO::FETCH_ASSOC);
//print_r($listaUsuarios); 
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca Publica Municipal de Orizaba|Admin</title>
    <link rel="shortcut icon" href="../images/icono2.ico">
    <link rel ="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"> </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/poppers.js/1.12.9/udm/popper.min.js" > </script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"> </script>
    
    


    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link href="css/sb-admin.css" rel="stylesheet">
     <link href="css/morris.css" rel="stylesheet">
     <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <script src="https://kit.fontawesome.com/7de388b156.js" crossorigin="anonymous"></script>
</head>
<body>
<?php include('navegacion.php');?>
<div class="container">    
<form action="" method="post" enctype="multipart/form-data">
<br>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
<br><br><br><br><br><br><br><br><br>  
<div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Registro de Usuarios</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
    <div class="form-row">
    
    <input type="hidden" required name="txtID" value="<?php echo $txtID;?>" placeholder="" id="txtID" require="">
<br>

<label for="">Fecha:</label>
<input type="date" class="form-control" name="txtFecha" value="<?php echo $txtFecha;?>" placeholder="" id="txtFecha" require="">
<br>
<div class="form-group col-md-12">
<label for="">Nombre Completo:</label>
<input type="text" class="form-control" name="txtNombre" value="<?php echo $txtNombre;?>" placeholder="" id="txtNombre" require="">
<br>
</div>
<div class="form-group col-md-6">
<label for="">Edad:</label>
<input type="number" class="form-control" min="1" max="100" name="txtEdad" value="<?php echo $txtEdad;?>" placeholder="" id="txtEdad" require="">
<br>
</div>
<div class="form-group col-md-6">
<label for="">Genero:</label>
<select name="txtGenero" class="form-control"  id="txtGenero">
      <?php echo '<option value="'.$_POST['txtGenero'].'">'.$_POST['txtGenero'].' </option>'; ?>
      <option value="Otra" disabled>seleccione la marca</option>
      <option value="H">Hombre</option>
      <option value="M">Mujer</option>
</select>
   <br>
</div>
<div class="form-group col-md-6">
<label for="">Area de ingreso:</label>
<select name="txtArea" class="form-control" id="txtArea">
      <?php echo '<option value="'.$_POST['txtArea'].'">'.$_POST['txtArea'].' </option>'; ?>
      <option value="Otra" disabled>seleccione la marca</option>
      <option value="General-Infantil">General-infantil</option>
      <option value="Centro-de-computo">Computo</option>
      <option value="Museo-Capacidad">Museo/Capacidad Dif</option>
</select>
<br>
</div>
<div class="form-group col-md-6">
<label for="">Temperatura registrada:</label>
<input type="number" class="form-control" step="0.01" min="35" max="37.6" value="<?php echo $txtTemperatura;?>" name="txtTemperatura" id="txtTemperatura" placeholder=""  require="">
<br>
</div>

    </div>
    </div>
      <div class="modal-footer">
        
    <button value="btnAgregar" <?php echo $accionAgregar;?> class="btn btn-success" type="submit" name="accion">Agregar</button>
    <button value="btnModificar"<?php echo $accionModificar;?> class="btn btn-primary" type="submit" name="accion">Modificar</button>
    <button value="btnEliminar" onclick="return Confirmar('¿Estas Segur@, se borrara el registro?');" <?php echo $accionEliminar;?> class="btn btn-danger" type="submit" name="accion">Eliminar</button>
    <button value="btnCancelar" <?php echo $accionCancelar;?> class="btn btn-secondary" type="submit" name="accion">Cancelar</button>

      </div>
    </div>
  </div>
</div>
<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Agregar un nuevo usuario +
</button>



   








<?php
error_reporting(E_ALL ^ E_NOTICE);
////////////////// CONEXION A LA BASE DE DATOS ////////////////////////////////////

$host="127.0.0.1:3325";
$usuario="root";
$contraseña="";
$base="bibliotecauni";

$conexion= new mysqli($host, $usuario, $contraseña, $base);
if ($conexion -> connect_errno)
{
	die("Fallo la conexion:(".$conexion -> mysqli_connect_errno().")".$conexion-> mysqli_connect_error());
}
////////////////// VARIABLES DE CONSULTA////////////////////////////////////
$where="";
$nombre=$_POST['xnombre'];
$area=$_POST['xarea'];
$fecha=$_POST['xfecha'];
$limit=$_POST['xregistros'];
////////////////////// BOTON BUSCAR //////////////////////////////////////

if (isset($_POST['buscar']))
{

	

	if (empty($_POST['xarea']))
	{
		$where="where nombre like '".$nombre."%'";
	}

	else if (empty($_POST['xnombre']))
	{
		$where="where area='".$area."'";
	}
    

	else
	{
		$where="where nombre like '".$nombre."%' and area='".$area."'";
	}
}
/////////////////////// CONSULTA A LA BASE DE DATOS ////////////////////////
$usuarios="SELECT * FROM registrousuarios $where $limit";
$resAlumnos=$conexion->query($usuarios);
$resCarreras=$conexion->query($usuarios);


if(mysqli_num_rows($resAlumnos)==0)
{
	$mensaje="<h1>No hay registros que coincidan con su criterio de búsqueda.</h1>";
}

?>

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
Busqueda Avanzada
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
  <br><br><br><br><br><br><br><br>
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Busqueda filtrada</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        


	<section>
<form method="post"> 
				<input type="text" placeholder="Nombre..." name="xnombre"/>
               <!-- <input type="date"  name="xfecha"/>-->
				<select name="xarea">
          
					<option value="">Area </option>
    <option value="Otra" disabled>seleccione la marca</option>
      <option value="General-Infantil">General-infantil</option>
      <option value="Centro-de-computo">Computo</option>
      <option value="Museo-Capacidad">Museo/Capacidad Dif</option>
				</select>

				<select name="xregistros">
					<option value="">No. de Registros</option>
					<option value="limit 3">3</option>
					<option value="limit 6">6</option>
					<option value="limit 9">9</option>
				</select>
				<button name="buscar" class="btn btn-primary" type="submit">Buscar</button>
        <a href="porfechas.php" class="btn btn-success">Busqueda por fechas</a>
			</form>
			<table class="table">
            <tr>
					
					<th>Fecha</th>
					<th>Nombre</th>
					<th>Edad</th>
          <th>Genero</th>
					<th>Area</th>
					
				</tr>

				<?php

				while ($registroAlumnos = $resAlumnos->fetch_array(MYSQLI_BOTH))
				{

					echo'<tr>
						 
						 <td>'.$registroAlumnos['Fecha'].'</td>
                         <td>'.$registroAlumnos['Nombre'].'</td>
						 <td>'.$registroAlumnos['Edad'].'</td>
						 <td>'.$registroAlumnos['Genero'].'</td>
						 <td>'.$registroAlumnos['Area'].'</td>
                         
						 </tr>';
				}
				?>
			</table>

			<?
				echo $mensaje;
			?>
		</section>
    </form>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        
      </div>
    </div>
  </div>
</div







<div class="row">
    <table class="table table-hover table-info">
        <thead class="thead-dark">
            <tr>
                <th>ID</th>
                <th>Fecha</th>
                <th>Nombre</th>
                <th>Edad</th>
                <th>Genero</th>
                <th>Area</th>
                <th>Temperatura</th>
                <th>Acciones</th>
            </tr>
        </thead>
    <?php foreach($listaUsuarios as $usuario ){?>
        <tr>
            <td><?php echo $usuario['ID']; ?></td>
            <td><?php echo $usuario['Fecha']; ?></td>
            <td><?php echo $usuario['Nombre']; ?></td>
            <td><?php echo $usuario['Edad']; ?></td>
            <td><?php echo $usuario['Genero']; ?></td>
            <td><?php echo $usuario['Area']; ?></td>
            <td><?php echo $usuario['Temperatura']; ?></td>
            <td>
        
            <form action="" method="post">
            <input type="hidden" name="txtID" value="<?php echo $usuario['ID'];?>">
            <input type="hidden" name="txtFecha" value="<?php echo $usuario['Fecha']; ?>">
            <input type="hidden" name="txtNombre" value="<?php echo $usuario['Nombre']; ?>">
            <input type="hidden" name="txtEdad" value="<?php echo $usuario['Edad']; ?>">
            <input type="hidden" name="txtGenero" value="<?php echo $usuario['Genero']; ?>" >
            <input type="hidden" name="txtArea" value="<?php echo $usuario['Area']; ?>" >
            <input type="hidden" name="txtTemperatura" value="<?php echo $usuario['Temperatura']; ?>">
            <input type="submit" class="btn btn-info" value="Seleccionar" name="accion">
            <button value="btnEliminar" onclick="return Confirmar('¿Estas Segur@, se borrara el registro?');" class="btn btn-danger" type="submit" name="accion">Eliminar</button>

            </form>
        
        
        </td>
        </tr>
    <?php } ?>
    </table>
</div>
<?php if($mostrarModal==false){ ?>
    <script>
        $('#exampleModal').modal('show');
        </script>
<?php } ?>

<script>
    function Confirmar(Mensaje){
        return (confirm(Mensaje))?true:false;
    }
    </script>
</div>

</body>
</html>
