<?php
$servername = "localhost"; // Nombre del servidor
$username = "root"; // Nombre de usuario para la base de datos
$password = ""; // Contraseña para la base de datos
$dbname = "candidatos"; // Nombre de la base de datos

// Crear la conexión a la base de datos
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
die("Conexión fallida: " . $conn->connect_error);
}

// Obtener los candidatos
$sql = "SELECT id, nombre_apellido FROM candidatos;";
$result = $conn->query($sql);

$candidatos = array();
$candidatos[] = array('id' => '', 'nombre' => '');

if ($result->num_rows > 0) {
// Recorrer los resultados y guardarlos en un array
while($row = $result->fetch_assoc()) {
$candidatos[] = array(
'id' => $row['id'],
'nombre' => $row['nombre_apellido']
);
}
}

header('Content-Type: application/json');

// Retornar los candidatos en formato JSON
echo json_encode($candidatos);

$conn->close();
?>