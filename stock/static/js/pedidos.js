function restarCantidad(productoId) {
    // Obtén el elemento de la celda de cantidad
    var cantidadElement = document.getElementById('cantidad' + productoId);

    // Obtiene el valor actual de la cantidad y conviértelo a un número
    var cantidadActual = parseInt(cantidadElement.innerText);

    // Resta uno a la cantidad y actualiza el contenido de la celda
    if (cantidadActual > 0) {
        cantidadElement.innerText = cantidadActual - 1;
    }
}
function sumarCantidad(productoId) {
    // Obtén el elemento de la celda de cantidad
    var cantidadElement = document.getElementById('cantidad' + productoId);

    // Obtiene el valor actual de la cantidad y conviértelo a un número
    var cantidadActual = parseInt(cantidadElement.innerText);

    // Resta uno a la cantidad y actualiza el contenido de la celda
    if (cantidadActual > 0) {
        cantidadElement.innerText = cantidadActual + 1;
    }
}

$(document).ready(function () {
    $.get('/pedidos/sumarAPedido/' + producto_id + '/', function (data) {
        // Realiza acciones adicionales según sea necesario
        console.log('Operación exitosa en el servidor');
    });
});