<?php
$servername = "127.0.0.1:3325";
$username = "root";
$password = "";
$db = "bibliotecauni";

$con = mysqli_connect($servername, $username, $password,$db);

if (!$con) {
    die("Connection failed: " . mysqli_connect_error());
    echo "Error en la conexión";
}//echo "Conexion exitosa";
?>
<?php
$servidor = "mysql:dbname=bibliotecauni;host=127.0.0.1:3325";
$usuario = "root";
$password = "";

try {
  $pdo = new PDO($servidor,$usuario,$password,array(PDO::MYSQL_ATTR_INIT_COMMAND=>"SET NAMES utf8"));

} catch(PDOException $e) {
  echo "Connection fallida: " . $e->getMessage();
}
?>