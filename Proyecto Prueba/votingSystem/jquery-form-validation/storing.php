<?php

// Función para limpiar los datos enviados por el formulario
function test_input($data) {
$data = trim($data);
$data = stripslashes($data);
$data = htmlspecialchars($data);

return $data;
}

// Obtener los datos enviados por el formulario
$name = $alias = $rut = $email = $region = $comuna = $candidato = "";

// Limpiar los datos recibidos
if(isset($_POST['name'])){
$name = test_input($_POST['name']);
}
if(isset($_POST['alias'])){
$alias = test_input($_POST['alias']);
}
if(isset($_POST['rut'])){
$rut = test_input($_POST['rut']);
}
if(isset($_POST['email'])){
$email = test_input($_POST['email']);
}
if(isset($_POST['regiones'])){
$region = test_input($_POST['regiones']);
}
if(isset($_POST['comunas'])){
$comuna = test_input($_POST['comunas']);
}
if(isset($_POST['candidatos'])){
$candidato = test_input($_POST['candidatos']);
}

$como_se_entero = '';

// Obtener cómo se enteró el usuario
if (!empty($_POST['web'])) {
$como_se_entero .= 'Web ';
}
if (!empty($_POST['tv'])) {
$como_se_entero .= 'TV ';
}
if (!empty($_POST['social'])) {
$como_se_entero .= 'Redes Sociales ';
}
if (!empty($_POST['amigo'])) {
$como_se_entero .= 'Amigo ';
}

// Conectar a la base de datos
$host = "localhost";
$user = "root";
$password = "";
$database = "storing";

$conn = new mysqli($host, $user, $password, $database);

// Verificar la conexión
if ($conn->connect_error) {
die("Connection failed: " . $conn->connect_error);
}

// Verificar si el usuario ya ha votado
$sql = "SELECT * FROM votes WHERE rut = '$rut'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
echo "<script>
Swal.fire({
icon: 'warning',
title: 'Oops...',
text: '¡Ya has votado!',
});
</script>";
} else {

// Insertar los datos del usuario en la base de datos
$sql = "INSERT INTO votes (name, alias, rut, email, region, comuna, candidato, como_se_entero) VALUES ('$name', '$alias', '$rut', '$email', '$region', '$comuna', '$candidato', '$como_se_entero')";

if ($conn->query($sql) === TRUE) {
echo "<script>
Swal.fire({
icon: 'success',
title: '¡Éxito!',
text: '¡Voto registrado exitosamente!',
});
</script>";
} else {
echo "Error: " . $sql . "<br>" . $conn->error;
}
}

$conn->close();

?>
