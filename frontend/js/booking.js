// ==========================================
// FASHION STORE SUITE - BOOKING JS
// ==========================================

document.addEventListener('DOMContentLoaded', () => {
    const bookingForm = document.querySelector('.booking-form');

    if (bookingForm) {
        const dateInput = document.getElementById('date');
        
        // Bloquear fechas pasadas en el selector de calendario automáticamente
        if (dateInput) {
            const today = new Date().toISOString().split('T')[0];
            dateInput.setAttribute('min', today);
        }

        // Validar el formulario antes de enviarlo al backend PHP
        bookingForm.addEventListener('submit', (e) => {
            const phoneInput = document.getElementById('phone').value.trim();

            if (phoneInput.length < 9) {
                alert('Por favor, introduce un número de teléfono válido (mínimo 9 dígitos).');
                e.preventDefault(); // Detiene el envío del formulario
            }
        });
    }
});