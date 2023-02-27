<?php
// Establecer las credenciales de conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "regiones";

// Crear una conexión a la base de datos
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar si se pudo establecer la conexión
if ($conn->connect_error) {
die("La conexión falló: " . $conn->connect_error);
}

// Obtener las regiones
$sql = "SELECT id_re, str_descripcion FROM region_cl;";
$result = $conn->query($sql);

$regiones = array();
$regiones[] = array('id' => '', 'nombre' => '');

if ($result->num_rows > 0) {
// Recorrer los resultados de la consulta y agregarlos al arreglo de regiones
while($row = $result->fetch_assoc()) {
$regiones[] = array(
'id' => $row['id_re'],
'nombre' => $row['str_descripcion']
);
}
}

// Obtener las comunas de una región seleccionada
if(isset($_GET['region_id'])) {
$region_id = $_GET['region_id'];
$sql = "SELECT id_co, str_descripcion FROM comuna_cl WHERE id_re = '$region_id';";
$result = $conn->query($sql);

$comunas = array();
$comunas[] = array('id' => '', 'nombre' => '');

if ($result->num_rows > 0) {
// Recorrer los resultados de la consulta y agregarlos al arreglo de comunas
while($row = $result->fetch_assoc()) {
$comunas[] = array(
'id' => $row['id_co'],
'nombre' => $row['str_descripcion']
);
}
}
}

// Establecer la cabecera de la respuesta como JSON
header('Content-Type: application/json');

if(isset($comunas)) {
// Si se obtuvieron las comunas de una región, devolverlas como respuesta
echo json_encode($comunas);
} else {
// Si no, devolver las regiones como respuesta
echo json_encode($regiones);
}

// Cerrar la conexión a la base de datos
$conn->close();
?>