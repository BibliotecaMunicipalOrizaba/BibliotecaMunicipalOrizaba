<?php
session_start();
session_destroy();
echo '<script> window.alert("Has cerrado tu sesion.");</script>';
echo '<script> window.location="../index.php"; </script>';
?>
