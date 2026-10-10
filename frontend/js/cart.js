// ==========================================
// FASHION STORE SUITE - CART JS
// ==========================================

document.addEventListener('DOMContentLoaded', () => {
    let cartCount = 0;
    
    // Seleccionamos el enlace del carrito en el header (el último elemento de las acciones)
    const cartLink = document.querySelector('.user-actions a:last-child');
    
    // Seleccionamos todos los botones de compra en la página de tienda
    const buyButtons = document.querySelectorAll('.btn-buy');

    buyButtons.forEach(button => {
        button.addEventListener('click', (e) => {
            cartCount++;
            
            // Actualizamos dinámicamente el texto del carrito en la cabecera
            if (cartLink && cartLink.textContent.includes('Carrito')) {
                cartLink.textContent = `🛒 Carrito (${cartCount})`;
            }

            // Obtenemos el nombre del producto que se acaba de añadir
            const productCard = e.target.closest('.product-card');
            const productName = productCard ? productCard.querySelector('h3').textContent : 'Producto';

            // Mensaje de confirmación visual amigable
            alert(`¡"${productName}" se ha añadido correctamente a tu carrito!`);
        });
    });
});