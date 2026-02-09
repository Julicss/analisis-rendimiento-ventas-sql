-- Inserción de datos iniciales

INSERT INTO clientes (nombre_cliente, pais) VALUES
('Ana López', 'Argentina'),
('Juan Pérez', 'Chile'),
('María Silva', 'Brasil'),
('Lucas Gómez', 'Argentina');

INSERT INTO productos (nombre_producto, categoria, precio) VALUES
('Laptop', 'Tecnología', 1200),
('Smartphone', 'Tecnología', 800),
('Silla de Oficina', 'Muebles', 300),
('Escritorio', 'Muebles', 450);

INSERT INTO ventas (cliente_id, producto_id, fecha_venta, cantidad) VALUES
(1, 1, '2024-01-10', 1),
(1, 2, '2024-01-15', 2),
(2, 3, '2024-02-01', 1),
(3, 1, '2024-02-10', 1),
(4, 4, '2024-02-18', 1),
(4, 2, '2024-02-20', 1);
