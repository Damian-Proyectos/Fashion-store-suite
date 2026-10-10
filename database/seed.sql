-- ==========================================
-- FASHION STORE SUITE - SEED DATA (DATOS DE PRUEBA)
-- ==========================================

USE fashion_store_db;

-- 1. Limpiamos la tabla de productos por si ya tuviera datos (evita duplicados)
TRUNCATE TABLE products;

-- 2. Insertamos los datos iniciales de ropa para la tienda
INSERT INTO products (name, price, image) VALUES 
('Sudadera Oversize Urban', 39.99, 'https://images.unsplash.com/photo-1556905055-8f358a7a47b2?w=300'),
('Zapatillas Running Street', 69.99, 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=300'),
('Pantalón Cargo Casual', 45.00, 'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?w=300'),
('Camiseta Básica Premium', 19.99, 'https://images.unsplash.com/photo-1521572267360-ee0c2909d518?w=300');