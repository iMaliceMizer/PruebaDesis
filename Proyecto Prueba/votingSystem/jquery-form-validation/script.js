// Función document ready para asegurar que todos los elementos se carguen antes de ejecutar
$(document).ready(function() {

// Variables para almacenar los elementos select de región, comuna y candidato
var $regions = $('#regiones');
var $comunas = $('#comunas');
var $candidatos = $('#candidatos');

// Cargar las regiones al cargar la página utilizando una solicitud AJAX
$.ajax({
url: 'regions.php',
dataType: 'json',
success: function(data) {

// Recorrer los datos devueltos y agregar cada región como una opción en el elemento select de región
$.each(data, function(index, region) {
$regions.append($('<option>').attr('value', region.id).text(region.nombre));
});
}
});

// Cargar las comunas cuando se seleccione una región utilizando una solicitud 
$regions.on('change', function() {

// Obtener el ID de la región seleccionada
var regionId = $(this).val();

// Borrar las opciones anteriores y agregar la opción predeterminada
$comunas.empty().append($('<option>').attr('value', '').text('Selecciona una comuna'));

// Cargar las comunas para la región seleccionada
$.ajax({
url: 'regions.php',
dataType: 'json',
data: { region_id: regionId },
success: function(data) {

// Recorrer los datos devueltos y agregar cada comuna como una opción en el elemento select de comuna
$.each(data, function(index, comuna) {
$comunas.append($('<option>').attr('value', comuna.id).text(comuna.nombre));
});
}
});
});

// Cargar candidatos en la carga de la página usando una solicitud AJAX
$.ajax({
url: 'candidates.php',
dataType: 'json',
data: { candidates: true },
success: function(data) {
// Iterar a través de los datos devueltos y agregar cada candidato como una opción en el elemento de selección de candidatos
$.each(data, function(index, candidate) {
$candidatos.append($('<option>').attr('value', candidate.id).text(candidate.nombre));
});
}
});

$('#myForm').submit(function(event) {
// Evitar la presentación de formularios predeterminada
event.preventDefault();

// Borrar mensajes de error previos
$('#result').html('');

var formData = $('#myForm').serialize();

$.ajax({
type: 'POST',
url: 'validate.php',
data: formData,
success: function(response) {

// Si no hay errores de validación, enviar los datos del formulario al servidor para su almacenamiento
if (response === 'Form submitted successfully') {

$.ajax({
type: 'POST',
url: 'storing.php',
data: formData,
success: function(response) {
    window.location.href = "success.php";
$('#result').html('<span class="success">' + response + '</span>');
},
error: function(response) {

$('#result').html('<span class="error">' + response + '</span>');
}
});
} else {

$('#result').html('<span class="error">' + response + '</span>');
}
},
error: function(response) {

$('#result').html('<span class="error">' + response + '</span>');
}
}); 
});
});