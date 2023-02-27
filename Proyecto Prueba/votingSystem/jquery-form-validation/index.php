<!-- Este es un archivo HTML que muestra un formulario de votación -->
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" href="style.css">
<!-- Se incluye la librería de SweetAlert2 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

<!-- Se incluye la librería de jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Se incluye el archivo de script personalizado -->
<script src="script.js"></script>
</head>
<body>
<h1>Formulario de votación</h1>

<!-- Se define el formulario de votación -->
<form id="myForm" method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
Nombre y Apellido: <input type="text" name="name" placeholder="" value="<?php if (isset($name)) echo $name; ?>">
<br>
Alias: <input type="text" name="alias" placeholder="" value="<?php if (isset($alias)) echo $alias; ?>">
<br>
RUT: <input type="text" id="rut" name="rut" placeholder=""  maxlength="12" value="<?php if (isset($rut)) echo $rut; ?>">
<br>
Email: <input type="text" name="email" placeholder="" value="<?php if (isset($email)) echo $email; ?>">
Region: <select id="regiones" name="regiones"></select> <!-- Se muestra la lista desplegable de regiones -->
Comuna: <select id="comunas" name="comunas"></select> <!-- Se muestra la lista desplegable de comunas -->
Candidato: <select id="candidatos" name="candidatos"></select> <!-- Se muestra la lista desplegable de candidatos -->
Como se entero de nosotros:
<input type="checkbox" id="web" name="web"> Web <!-- Checkbox para opción de Web -->
<input type="checkbox" id="tv" name="tv"> TV <!-- Checkbox para opción de TV -->
<input type="checkbox" id="social" name="social"> Redes Sociales <!-- Checkbox para opción de Redes Sociales -->
<input type="checkbox" id="amigo" name="amigo"> Amigo <!-- Checkbox para opción de Amigo -->
<input type="submit" name="submit" value="Submit"> <!-- Botón de enviar formulario -->
<div id="result"></div> <!-- Div para mostrar los resultados del formulario -->
</form>

<!-- Se agrega un evento para formatear el RUT chileno -->
<script>
const input = document.getElementById('rut');

input.addEventListener('input', function() {
input.value = formatChileanRUT(input.value);

function formatChileanRUT(rut) {
rut = rut.replace(/[^\dkK]/g, ''); // se eliminan todos los caracteres que no sean dígitos ni la letra 'K' o 'k'

// se divide el RUT en el número y el dígito verificador
let rutNumber = rut.slice(0, -1);
let rutVerifier = rut.slice(-1);

// se agregan puntos para separar los miles, millones y billones
rutNumber = rutNumber.replace(/\B(?=(\d{3})+(?!\d))/g, '.');

// se agrega un guión y el dígito verificador al número formateado
return rutNumber + '-' + rutVerifier.toUpperCase();
}
});

</script>

<!-- Se incluye la librería de jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>

</html>