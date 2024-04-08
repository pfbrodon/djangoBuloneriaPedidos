// Obtener referencia al botón y al contenedor del carrito
var toggleCartBtn = document.getElementById('toggle-cart-btn');
var carritoContainer = document.getElementById('carrito-container');

// Agregar evento de clic al botón
toggleCartBtn.addEventListener('click', function() {
    // Si el carrito está visible, ocultarlo; de lo contrario, mostrarlo
    if (carritoContainer.style.display === 'block') {
        carritoContainer.style.display = 'none';
    } else {
        carritoContainer.style.display = 'block';
    }
});