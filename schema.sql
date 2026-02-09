-- Esquema: Análisis de Rendimiento de Ventas

CREATE TABLE clientes (
    cliente_id SERIAL PRIMARY KEY,
    nombre_cliente VARCHAR(100) NOT NULL,
    pais VARCHAR(50)
);

CREATE TABLE productos (
    producto_id SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    precio NUMERIC(10,2) CHECK (precio >= 0)
);

CREATE TABLE ventas (
    venta_id SERIAL PRIMARY KEY,
    cliente_id INT REFERENCES clientes(cliente_id),
    producto_id INT REFERENCES productos(producto_id),
    fecha_venta DATE NOT NULL,
    cantidad INT CHECK (cantidad > 0)
);
