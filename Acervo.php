</script>
<script>//para que no se muestre el emergente de renvio de formulario
            if (window.history.replaceState) { // verificamos disponibilidad
                window.history.replaceState(null, null, window.location.href);
            }
        </script>
<?php
session_start();
$nombre = $_SESSION['user'];
include('navegacion.php');

//print_r($_POST); 



$txtID_acervo=(isset($_POST['txtID_acervo']))?$_POST['txtID_acervo']:"";
$txtClasificacion=(isset($_POST['txtClasificacion']))?$_POST['txtClasificacion']:"";
$txtTitulo=(isset($_POST['txtTitulo']))?$_POST['txtTitulo']:"";
$txtAutor=(isset($_POST['txtAutor']))?$_POST['txtAutor']:"";
$txtEditorial=(isset($_POST['txtEditorial']))?$_POST['txtEditorial']:"";
$txtCantidad=(isset($_POST['txtCantidad']))?$_POST['txtCantidad']:"";
$txtDescripcion=(isset($_POST['txtDescripcion']))?$_POST['txtDescripcion']:"";
$txtSeccion=(isset($_POST['txtSeccion']))?$_POST['txtSeccion']:"";

$accion=(isset($_POST['accion']))?$_POST['accion']:"";
include("conexion.php");

$accionAgregar="";
$accionModificar=$accionEliminar=$accionCancelar="disabled";
$mostrarModal=true;

switch($accion){
    case"btnAgregar":
        
        $sentencia=$pdo->prepare("INSERT INTO acervo(id_acervo,clasificacion,titulo,autor,editorial,cantidad,descripcion,seccion) 
        VALUES(:id_acervo,:clasificacion,:titulo,:autor,:editorial,:cantidad,:descripcion,:seccion)");

        $sentencia->bindParam(':id_acervo',$txtID_acervo);
        $sentencia->bindParam(':clasificacion',$txtClasificacion);
        $sentencia->bindParam(':titulo',$txtTitulo);
        $sentencia->bindParam(':autor',$txtAutor);
        $sentencia->bindParam(':editorial',$txtEditorial);
        $sentencia->bindParam(':cantidad',$txtCantidad);
        $sentencia->bindParam(':descripcion',$txtDescripcion);
        $sentencia->bindParam(':seccion',$txtSeccion);
        $sentencia->execute();
        

    break;
    case"btnModificar":

        $sentencia=$pdo->prepare(" UPDATE ACERVO SET
        clasificacion=:clasificacion,
        titulo=:titulo,
        autor=:autor,
        editorial=:editorial,
        cantidad=:cantidad,
        descripcion=:descripcion,
        seccion=:seccion WHERE
        id_acervo=:id_acervo");
        
        $sentencia->bindParam(':clasificacion',$txtClasificacion);
        $sentencia->bindParam(':titulo',$txtTitulo);
        $sentencia->bindParam(':autor',$txtAutor);
        $sentencia->bindParam(':editorial',$txtEditorial);
        $sentencia->bindParam(':cantidad',$txtCantidad);
        $sentencia->bindParam(':descripcion',$txtDescripcion);
        $sentencia->bindParam(':seccion',$txtSeccion);
        $sentencia->bindParam(':id_acervo',$txtID_acervo);
        $sentencia->execute();

        
        echo "<script>
                   alert('Modificacion exitosa');
                   window.location= '#'
                   
       </script>";
 
    break;
    case"btnEliminar":
        $sentencia=$pdo->prepare(" DELETE FROM ACERVO WHERE
        id_acervo=:id_acervo");
        $sentencia->bindParam(':id_acervo',$txtID_acervo);
        $sentencia->execute();

        echo "<script>
                   alert('Eliminacion exitosa');
                   window.location= '#'
                   
       </script>";
    break;
    case"btnCancelar":
        header('Location: Acervo.php');
    break;
    case "Seleccionar":
        $mostrarModal = false;
        $accionAgregar="disabled";
        $accionModificar="enabled";
        $accionEliminar="enabled";
        $accionCancelar="enabled";
    break;

}
    $sentencia= $pdo->prepare("SELECT * FROM acervo");
    $sentencia->execute();
    $listalibros=$sentencia->fetchAll(PDO::FETCH_ASSOC);

    //print_r($listalibros);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca Publica Municipal de Orizaba|Admin</title>
    <link rel="shortcut icon" href="images/logo.png">
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
<div class="container">
    <form action="" method="post">
    <br><br>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">  
<br><br><br><br><br><br>
<div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Acervo</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="form-row">
  
      <input type="hidden" required name="txtID_acervo" value="<?php echo $txtID_acervo;?>" placeholder="" id="txtID_acervo" require="">
    
    <label for="">Clasficacion:</label>
    <input type="text" class="form-control" name="txtClasificacion"value="<?php echo $txtClasificacion;?>" placeholder="" id="txt8" require="">
    <br>
    <label for="">Titulo:</label>
    <input type="text" class="form-control" name="txtTitulo" value="<?php echo $txtTitulo;?>"placeholder="" id="txt2" require="">
    <br>
    <div class="form-group col-md-6">
    <label for="">Autor:</label>
    <input type="text" class="form-control" name="txtAutor" value="<?php echo $txtAutor;?>" placeholder="" id="txt3" require="">
    <br>
</div>
<div class="form-group col-md-6">
    <label for="">Editorial:</label>
    <input type="text" class="form-control" name="txtEditorial" value="<?php echo $txtEditorial;?>" placeholder="" id="txt4" require="">
</div>
<div class="form-group col-md-6">
    <label for="">Cantidad:</label>
    <input type="number" class="form-control" name="txtCantidad" value="<?php echo $txtCantidad;?>" placeholder="" id="txt5" require="">
    <br>
</div>
   
    <div class="form-group col-md-6">
    <label for="">Seccion:</label>
    <select name="txtSeccion" class="form-control" id="txtSeccion">
      <?php echo '<option value="'.$_POST['txtSeccion'].'">'.$_POST['txtSeccion'].' </option>'; ?>
      <option value="Otra" disabled>seleccione la marca</option>
      <option value="DGB">DGB</option>
      <option value="Donacion">Donacion</option>
      <option value="Otro">Otro</option>
        </select>
    <br>
</div>
      </div>
      <label for="">Descripcion:</label>
    <input type="text" class="form-control" name="txtDescripcion" value="<?php echo $txtDescripcion;?>" placeholder="" id="txt6" require="">
    <br>
      </div>
      <div class="modal-footer">
      <button value="btnAgregar" <?php echo $accionAgregar;?> class="btn btn-success" type="submit" name="accion">Agregar</button>
    <button value="btnModificar" <?php echo $accionModificar;?> class="btn btn-primary" type="submit" name="accion">Modificar</button>
    <button value="btnEliminar" <?php echo $accionEliminar;?> onclick="return Confirmar('¿Estas Segur@, se borrara el registro?');" class="btn btn-danger" type="submit" name="accion">Eliminar</button>
    <button value="btnCancelar" <?php echo $accionCancelar;?> class="btn btn-secondary" type="submit" name="accion">Cancelar</button>
      </div>
    </div>
  </div>
</div>
 <!-- Button trigger modal -->
 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Agregar+
</button>
<a href="Excel.php" class="btn btn-success">Descargar Excel</a>



<form action="#" method="POST">
    <center>
    <div class="alert alert-info" role="alert">
  Buscador
<input type="text" style="border-radius:10px; padding-left:5px; heigth:25px;" placeholder="Buscar por titulo o autor" name="buscar">
<input type="submit" class="btn btn-info" value="Buscar"></center>
</div>
</form>

<?php
include("conexion.php");
if(!isset($_POST['buscar'])){
    $_POST['buscar'] = "";
    $buscar = $_POST['buscar'];
    }

$buscar= $_POST['buscar'];

$SQL_READ = "SELECT * FROM acervo WHERE titulo LIKE '%".$buscar."%' OR
autor LIKE '%".$buscar."%' LIMIT 500";
$sql_query = mysqli_query($con,$SQL_READ);
?>
    
    

    


    </form>

    <div class="row">
        
        <table style="margin: 0 auto;" class="table table-hover table-info">
            <thead class="thead-dark">
                <tr>
                    <th>ID</th>
                    <th>Clasificacion</th>
                    <th>Titulo</th>
                    <th>Autor</th>
                    <th>Editorial</th>
                    <th>Cantidad</th>
                    <th>Descripcion</th>
                    <th>Seccion</th>
                    <th>Acciones</th>
                </tr>
            </thead><!--video 9-->
        <?php 
        while($libritos=mysqli_fetch_array($sql_query)){?>
                <tr>
                    <td><?php echo $libritos['id_acervo'];?></td>
                    <td><?php echo $libritos['clasificacion'];?></td>
                    <td><?php echo $libritos['titulo'];?></td>
                    <td><?php echo $libritos['autor'];?></td>
                    <td><?php echo $libritos['editorial'];?></td>
                    <td><?php echo $libritos['cantidad'];?></td>
                    <td><?php echo $libritos['descripcion'];?></td>
                    <td><?php echo $libritos['seccion'];?></td>
                    <td>
                    
                    <form action="" method="post">
                    
                    <input type="hidden" name="txtID_acervo" value="<?php echo $libritos['id_acervo'];?>">
                    <input type="hidden" name="txtClasificacion" value="<?php echo $libritos['clasificacion'];?>">
                    <input type="hidden" name="txtTitulo" value="<?php echo $libritos['titulo'];?>">
                    <input type="hidden" name="txtAutor" value="<?php echo $libritos['autor'];?>">
                    <input type="hidden" name="txtEditorial" value="<?php echo $libritos['editorial'];?>">
                    <input type="hidden" name="txtCantidad" value="<?php echo $libritos['cantidad'];?>">
                    <input type="hidden" name="txtDescripcion" value="<?php echo $libritos['descripcion'];?>">
                    <input type="hidden" name="txtSeccion" value="<?php echo $libritos['seccion'];?>">

                    <input type="submit" value="Seleccionar" class="btn btn-info" name="accion">
                    <button value="btnEliminar" type="submit" class="btn btn-danger" name="accion">Eliminar</button> 


                    </form>
                    
                    
                    
                </tr>


        <?php } ?>

        </table>

    </div>



    <script>
    function Confirmar(Mensaje){
        return (confirm(Mensaje))?true:false;
    }
    </script>


<?php if($mostrarModal==false){ ?>
    <script>
        $('#exampleModal').modal('show');
        </script>
<?php } ?>
</div>
</body>
</html>