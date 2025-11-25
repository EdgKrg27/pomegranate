-- 1. INSERTAR CATEGORÍAS
INSERT INTO categorias (nombre, descripcion) VALUES
('Electrónicos', 'Dispositivos electrónicos y gadgets'),
('Ropa', 'Prendas de vestir para hombres, mujeres y niños'),
('Hogar', 'Artículos para el hogar y decoración'),
('Deportes', 'Equipamiento deportivo y outdoor'),
('Libros', 'Libros de todos los géneros'),
('Juguetes', 'Juguetes y juegos para todas las edades'),
('Belleza', 'Productos de cuidado personal y cosméticos'),
('Alimentos', 'Productos alimenticios y bebidas');

-- 2. INSERTAR CLIENTES (50 clientes)
INSERT INTO clientes (nombre, email, telefono, direccion, fecha_registro) VALUES
('María González', 'maria.gonzalez@email.com', '+34 612 345 678', 'Calle Mayor 123, Madrid', '2023-01-15'),
('Carlos Rodríguez', 'carlos.rodriguez@email.com', '+34 623 456 789', 'Avenida Libertad 45, Barcelona', '2023-02-20'),
('Ana López', 'ana.lopez@email.com', '+34 634 567 890', 'Plaza España 78, Valencia', '2023-01-10'),
('David Martínez', 'david.martinez@email.com', '+34 645 678 901', 'Calle Gran Vía 234, Madrid', '2023-03-05'),
('Laura Sánchez', 'laura.sanchez@email.com', '+34 656 789 012', 'Paseo Marítimo 56, Málaga', '2023-02-28'),
('Javier Fernández', 'javier.fernandez@email.com', '+34 667 890 123', 'Calle Real 89, Sevilla', '2023-01-22'),
('Elena Pérez', 'elena.perez@email.com', '+34 678 901 234', 'Avenida Central 12, Bilbao', '2023-03-15'),
('Miguel Torres', 'miguel.torres@email.com', '+34 689 012 345', 'Calle Nueva 67, Zaragoza', '2023-02-10'),
('Sofía Ramírez', 'sofia.ramirez@email.com', '+34 690 123 456', 'Plaza Mayor 34, Murcia', '2023-01-30'),
('Daniel García', 'daniel.garcia@email.com', '+34 601 234 567', 'Calle Ancha 90, Palma', '2023-03-01'),
('Paula Hernández', 'paula.hernandez@email.com', '+34 612 345 679', 'Avenida del Mar 23, Alicante', '2023-02-14'),
('Alejandro Díaz', 'alejandro.diaz@email.com', '+34 623 456 780', 'Calle Larga 45, Córdoba', '2023-01-18'),
('Isabel Moreno', 'isabel.moreno@email.com', '+34 634 567 891', 'Paseo del Parque 78, Valladolid', '2023-03-08'),
('Ricardo Vargas', 'ricardo.vargas@email.com', '+34 645 678 902', 'Calle Sol 56, Vigo', '2023-02-25'),
('Carmen Ruiz', 'carmen.ruiz@email.com', '+34 656 789 013', 'Avenida Norte 34, Gijón', '2023-01-12'),
('Roberto Castro', 'roberto.castro@email.com', '+34 667 890 124', 'Calle Este 89, L''Hospitalet', '2023-03-20'),
('Patricia Morales', 'patricia.morales@email.com', '+34 678 901 235', 'Plaza Central 12, A Coruña', '2023-02-05'),
('Francisco Ortega', 'francisco.ortega@email.com', '+34 689 012 346', 'Calle Oeste 67, Vitoria', '2023-01-28'),
('Beatriz Silva', 'beatriz.silva@email.com', '+34 690 123 457', 'Avenida Sur 90, Granada', '2023-03-12'),
('Jorge Mendoza', 'jorge.mendoza@email.com', '+34 601 234 568', 'Paseo del Río 23, Elche', '2023-02-18');

-- Insertar 30 clientes más
INSERT INTO clientes (nombre, email, telefono, direccion, fecha_registro)
SELECT 
    'Cliente ' || i || ' Apellido',
    'cliente' || i || '@email.com',
    '+34 6' || (10 + i)::TEXT || ' ' || (100 + i)::TEXT || ' ' || (200 + i)::TEXT,
    'Dirección ' || i || ', Ciudad ' || (i % 10 + 1),
    CURRENT_DATE - (random() * 365)::INT
FROM generate_series(21, 50) i;

-- 3. INSERTAR PRODUCTOS (60 productos)
INSERT INTO productos (nombre, descripcion, precio, costo, categoria_id, sku) VALUES
-- Electrónicos
('iPhone 14 Pro', 'Smartphone Apple 128GB', 999.99, 650.00, 1, 'IP14P-128'),
('Samsung Galaxy S23', 'Smartphone Android 256GB', 849.99, 550.00, 1, 'SGS23-256'),
('MacBook Air M2', 'Laptop Apple 13" 256GB', 1199.99, 850.00, 1, 'MBAM2-256'),
('iPad Air', 'Tablet Apple 64GB', 599.99, 400.00, 1, 'IPAIR-64'),
('AirPods Pro', 'Auriculares inalámbricos Apple', 249.99, 150.00, 1, 'AIRPODS-PRO'),
('Smart TV 55" 4K', 'Televisor LG 55 pulgadas 4K', 699.99, 450.00, 1, 'TV55-4K-LG'),

-- Ropa
('Camisa Oxford Hombre', 'Camisa de algodón Oxford azul', 49.99, 25.00, 2, 'CAM-OXF-BLUE'),
('Vestido Verano Mujer', 'Vestido floral verano talla M', 39.99, 18.00, 2, 'VEST-FLORAL-M'),
('Jeans Slim Fit', 'Jeans ajustados color azul oscuro', 59.99, 30.00, 2, 'JEANS-SLIM-32'),
('Chaqueta Invierno', 'Chaqueta abrigo invierno negro', 89.99, 45.00, 2, 'CHAQUETA-WIN'),
('Zapatos Casual', 'Zapatos casuales cuero marrón', 79.99, 40.00, 2, 'ZAP-CAS-BROWN'),

-- Hogar
('Sofá 3 Plazas', 'Sofá moderno gris 3 plazas', 499.99, 300.00, 3, 'SOFA-3-GRAY'),
('Mesa Centro', 'Mesa centro madera roble', 199.99, 120.00, 3, 'MESA-CENT-ROBLE'),
('Lámpara LED', 'Lámpara LED moderna salón', 89.99, 45.00, 3, 'LAMP-LED-SALON'),
('Juego Sábanas', 'Juego sábanas algodón king size', 49.99, 25.00, 3, 'SHEETS-KING'),
('Cafetera Express', 'Cafetera espresso automática', 129.99, 75.00, 3, 'CAFE-EXPRESS'),

-- Deportes
('Bicicleta Montaña', 'Bicicleta montaña 21 velocidades', 299.99, 180.00, 4, 'BIKE-MTB-21'),
('Set Pesas 20kg', 'Set de pesas ajustables 20kg', 79.99, 40.00, 4, 'PESAS-20KG'),
('Zapatillas Running', 'Zapatillas running hombre talla 42', 89.99, 45.00, 4, 'RUN-SHOES-42'),
('Pelota Fútbol', 'Pelota fútbol oficial tamaño 5', 29.99, 15.00, 4, 'BALL-FUT-5'),
('Raqueta Tenis', 'Raqueta tenis profesional', 149.99, 85.00, 4, 'RAQ-TEN-PRO'),

-- Libros
('Cien Años de Soledad', 'Novela Gabriel García Márquez', 19.99, 8.00, 5, 'BOOK-CIEN-ANOS'),
('El Quijote', 'Edición especial Miguel de Cervantes', 24.99, 10.00, 5, 'BOOK-QUIJOTE'),
('Harry Potter 1', 'Harry Potter y la piedra filosofal', 15.99, 6.00, 5, 'BOOK-HP-1'),
('Cocina Mediterránea', 'Libro recetas cocina mediterránea', 29.99, 12.00, 5, 'BOOK-COC-MED');

-- Insertar 33 productos más
INSERT INTO productos (nombre, descripcion, precio, costo, categoria_id, sku)
SELECT 
    'Producto ' || i,
    'Descripción del producto ' || i,
    (random() * 200 + 10)::DECIMAL(10,2),
    (random() * 100 + 5)::DECIMAL(10,2),
    (random() * 7 + 1)::INT,
    'SKU-' || (1000 + i)
FROM generate_series(25, 57) i;

-- 4. INSERTAR INVENTARIO
INSERT INTO inventario (producto_id, cantidad, ubicacion)
SELECT 
    producto_id,
    (random() * 100 + 10)::INT,
    CASE 
        WHEN random() < 0.3 THEN 'Almacén A'
        WHEN random() < 0.6 THEN 'Almacén B'
        ELSE 'Almacén C'
    END
FROM productos;

-- 5. INSERTAR VENTAS (80 ventas)
INSERT INTO ventas (cliente_id, fecha_venta, total, estado)
SELECT 
    (random() * 49 + 1)::INT,
    CURRENT_DATE - (random() * 180)::INT,
    (random() * 500 + 20)::DECIMAL(12,2),
    CASE 
        WHEN random() < 0.9 THEN 'COMPLETADA'
        WHEN random() < 0.95 THEN 'PENDIENTE'
        ELSE 'CANCELADA'
    END
FROM generate_series(1, 80) i;

-- 6. INSERTAR DETALLE_VENTAS (200+ registros)
WITH ventas_con_detalles AS (
    SELECT 
        v.venta_id,
        GENERATE_SERIES(1, (random() * 3 + 1)::INT) as item_num
    FROM ventas v
)
INSERT INTO detalle_ventas (venta_id, producto_id, cantidad, precio_unitario)
SELECT 
    vd.venta_id,
    (random() * 56 + 1)::INT as producto_id,
    (random() * 5 + 1)::INT as cantidad,
    p.precio as precio_unitario
FROM ventas_con_detalles vd
JOIN productos p ON p.producto_id = (random() * 56 + 1)::INT
ON CONFLICT DO NOTHING;

-- Actualizar los totales reales en la tabla ventas basado en los detalles
UPDATE ventas 
SET total = (
    SELECT COALESCE(SUM(subtotal), 0)
    FROM detalle_ventas dv
    WHERE dv.venta_id = ventas.venta_id
)
WHERE venta_id IN (SELECT venta_id FROM detalle_ventas);