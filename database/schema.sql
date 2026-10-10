-- ==========================================
-- FASHION STORE SUITE - BASE DE DATOS (SCHEMA)
-- ==========================================

-- 1. Crear la base de datos si no existe
CREATE DATABASE IF NOT EXISTS fashion_store_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE fashion_store_db;

-- 2. Tabla de Reservas (conectada con el formulario de booking.html)
CREATE TABLE IF NOT EXISTS bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    date DATE NOT NULL,
    time TIME NOT NULL,
    service_type VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Tabla de Productos (conectada con el catálogo y el panel admin)
CREATE TABLE IF NOT EXISTS products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    image VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 4. Datos de prueba iniciales para que la tienda no aparezca vacía
INSERT INTO products (name, price, image) VALUES 
('Sudadera Oversize', 39.99, 'https://images.unsplash.com/photo-1556905055-8f358a7a47b2?w=300'),
('Zapatillas Urban', 69.99, 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=300'),
('Pantalón Cargo', 45.00, 'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?w=300');