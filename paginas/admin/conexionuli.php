<?php

$server = 'localhost';
$username = 'root';
$password = 'ULISESmeza';
$database = 'chambita3_0';

try {
  $conn = new PDO("mysql:host=$server;dbname=$database;", $username, $password);
} catch (PDOException $e) {
  die('Connection Failed: ' . $e->getMessage());
}

$conexion=new mysqli($server,$username,$password,$database);
if ($conexion->connect_error){die("La conexion fallo:".$conexion->connect_error);
                             }
?>