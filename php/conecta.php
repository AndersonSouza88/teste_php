<?php 
$host = "localhost";
$db = "teste_anderson";
$user ="root";
$senha = "12345678";

$mysqli = new mysqli($host, $user, $senha, $db);
if($mysqli->connect_errno) {
    die("Falha na conexão com o banco de dados");
}
?>