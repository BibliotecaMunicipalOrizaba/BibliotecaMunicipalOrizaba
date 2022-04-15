<?php 
header('Content-type: application/vnd.ms-excel');
header("Content-Disposition: attachment; filename= acervo.xls");

 ?>


        
        <table >
                <tr>
                    <th>ID</th>
                    <th>Clasificacion</th>
                    <th>Titulo</th>
                    <th>Autor</th>
                    <th>Editorial</th>
                    <th>Cantidad</th>
                    <th>Descripcion</th>
                    <th>Seccion</th>
                    
                </tr>
<?php
include("conexion.php");
$sql="SELECT * FROM ACERVO";
$ejecutar=mysqli_query($con,$sql);
while ($fila=mysqli_fetch_array($ejecutar)){
?>

                <tr>
                    <td><?php echo $fila[0];?></td>
                    <td><?php echo $fila[1];?></td>
                    <td><?php echo $fila[2];?></td>
                    <td><?php echo $fila[3];?></td>
                    <td><?php echo $fila[4];?></td>
                    <td><?php echo $fila[5];?></td>
                    <td><?php echo $fila[6];?></td>
                    <td><?php echo $fila[7];?></td>
                    
                    
                    
                </tr>
               


        <?php } ?>

        </table>
