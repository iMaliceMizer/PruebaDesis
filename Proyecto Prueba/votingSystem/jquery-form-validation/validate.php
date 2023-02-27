<?php

// Declaración de variables para los mensajes de error y los valores del formulario
$nameErr = $aliasErr = $rutErr = $emailErr = $checkboxErr = $regionErr = $comunaErr = $candidatoErr = "";
$name = $alias = $rut = $email = $region = $comuna = $candidato = "";

// Verificación de que se ha enviado el formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
// Validación del campo "name"
if (empty($_POST["name"])) {
$nameErr = "Name is required";
} else {
$name = test_input($_POST["name"]);
}
// Validación del campo "alias"
if (empty($_POST["alias"])) {
$aliasErr = "Alias is required";
} else {
$alias = test_input($_POST["alias"]);
// Verificación de que el alias tenga al menos 5 caracteres y contenga al menos una letra y un número
if (strlen($alias) < 5) {
$aliasErr = "Alias must be at least 5 characters long";
} elseif (!preg_match("/[a-zA-Z]/", $alias) || !preg_match("/[0-9]/", $alias)) {
$aliasErr = "Alias must contain at least one letter and one number";
}
}

// Validación del campo "rut"
if (empty($_POST["rut"])) {
$rutErr = "RUT is required";
} else {
$rut = test_input($_POST["rut"]);
// Verificación de que el RUT tenga un formato válido
if (!preg_match("/^\d{1,2}\.\d{3}\.\d{3}[-]\d{1}$|^\d{2}\.\d{3}\.\d{3}[-]\d{1}$/", $rut)) {
$rutErr = "Invalid RUT format";
} 
}
}
// Validación del campo "email"
if (empty($_POST["email"])) {
$emailErr = "Email is required";
} else {
$email = test_input($_POST["email"]);
// Verificación de que el correo electrónico tenga un formato válido
if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
$emailErr = "Invalid email format";
}
}
// Validación del campo "regiones"
if (empty($_POST['regiones'])) {
$regionErr = "Region is required";
} else {
$region = test_input($_POST['regiones']);
}
// Validación del campo "comunas"
if (empty($_POST['comunas'])) {
$comunaErr = "Comuna is required";
} else {
$comuna = test_input($_POST['comunas']);
}
// Validación del campo "candidatos"
if (empty($_POST['candidatos'])) {
$candidatoErr = "Candidato is required";
} else {
$candidato = test_input($_POST['candidatos']);
}
// Si ninguna de las casillas de verificación está seleccionada
// asignar mensaje de error a la variable $checkboxErr
if (empty($_POST['web']) && empty($_POST['tv']) && empty($_POST['social']) && empty($_POST['amigo'])) {
$checkboxErr = "Please select at least two checkboxes";
} else {
// Contar cuántas casillas de verificación se han seleccionado
$checkboxCount = 0;
if (!empty($_POST['web'])) {
$checkboxCount++;
}
if (!empty($_POST['tv'])) {
$checkboxCount++;
}
if (!empty($_POST['social'])) {
$checkboxCount++;
}
if (!empty($_POST['amigo'])) {
$checkboxCount++;
}
// Si no se han seleccionado al menos dos casillas
// asignar mensaje de error a la variable $checkboxErr
if ($checkboxCount < 2) {
$checkboxErr = "Please select at least two checkboxes";
}
}
// Función para validar y limpiar los datos enviados por el formulario
function test_input($data) {
$data = trim($data);
$data = stripslashes($data);
$data = htmlspecialchars($data);

return $data;
}
// Si no hay ningún error en los datos ingresados por el usuario
// mostrar mensaje de éxito
if ($nameErr == "" && $aliasErr == "" && $rutErr == "" && $emailErr == "" && $checkboxErr == "" && $regionErr == "" && $comunaErr == "" && $candidatoErr == "" ) {
echo "Form submitted successfully";
} else {
// Crear un array con los mensajes de error
$errors = array($nameErr, $aliasErr, $rutErr, $emailErr, $regionErr, $comunaErr, $candidatoErr, $checkboxErr,);

// Eliminar los mensajes de error vacíos del array
$errors = array_filter($errors);

// Mostrar los mensajes de error en el orden correcto
echo implode(' ', $errors);
}
?>
