// ==========================================
// FASHION STORE SUITE - MAIN JS
// ==========================================

document.addEventListener('DOMContentLoaded', () => {
    console.log('Fashion Store Suite - Frontend cargado correctamente.');

    // Validación básica de la barra de búsqueda en la cabecera
    const searchBtn = document.querySelector('.search-bar button');
    const searchInput = document.querySelector('.search-bar input');

    if (searchBtn && searchInput) {
        searchBtn.addEventListener('click', (e) => {
            if (searchInput.value.trim() === '') {
                e.preventDefault();
                alert('Por favor, escribe algo para buscar en la tienda.');
                searchInput.focus();
            }
        });
    }
});