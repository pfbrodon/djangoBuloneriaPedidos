document.addEventListener('DOMContentLoaded', function() {
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
});

/*document.addEventListener('DOMContentLoaded', function() {
    // Obtener referencia al botón y al contenedor del carrito
    var toggleCartBtn = document.getElementById('toggle-cart-btn');
    var carritoContainer = document.getElementById('carrito-container');
    var isOpen = false; // Variable para controlar si el carrito está abierto o cerrado

    // Función para abrir o cerrar el carrito con desplazamiento lateral
    function toggleCart() {
        if (isOpen) {
            carritoContainer.style.transform = 'translateX(100%)'; // Oculta el carrito desplazándolo hacia la derecha
        } else {
            carritoContainer.style.transform = 'translateX(0)'; // Muestra el carrito desplazándolo hacia la izquierda
        }
        isOpen = !isOpen; // Cambia el estado de la variable isOpen
    }

    // Agregar evento de clic al botón
    toggleCartBtn.addEventListener('click', function() {
        toggleCart(); // Llama a la función toggleCart al hacer clic en el botón
    });

    // Cerrar el carrito al hacer clic fuera de él
    document.addEventListener('click', function(event) {
        if (isOpen && !carritoContainer.contains(event.target) && event.target !== toggleCartBtn) {
            toggleCart(); // Cierra el carrito si está abierto y se hace clic fuera de él o en el botón
        }
    });
});*/

/*
<style>
        #carrito-container {
            position: fixed;
            top: 0;
            right: 0;
            width: 300px;
            height: 100%;
            background-color: #f0f0f0;
            overflow-x: hidden;
            transition: transform 0.3s ease;
            transform: translateX(100%);
        }

        #toggle-cart-btn {
            margin: 20px;
            padding: 10px;
            font-size: 16px;
        }
    </style>
*/