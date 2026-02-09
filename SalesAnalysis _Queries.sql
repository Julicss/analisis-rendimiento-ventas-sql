-- Ingresos totales por cliente
SELECT
    c.nombre_cliente,
    SUM(p.precio * v.cantidad) AS total_gastado
FROM ventas v
JOIN clientes c ON v.cliente_id = c.cliente_id
JOIN productos p ON v.producto_id = p.producto_id
GROUP BY c.nombre_cliente
ORDER BY total_gastado DESC;

-- Ingresos por categoría de producto
SELECT
    p.categoria,
    SUM(p.precio * v.cantidad) AS ingresos_totales
FROM ventas v
JOIN productos p ON v.producto_id = p.producto_id
GROUP BY p.categoria;

-- Producto más vendido por cantidad
SELECT
    p.nombre_producto,
    SUM(v.cantidad) AS unidades_vendidas
FROM ventas v
JOIN productos p ON v.producto_id = p.producto_id
GROUP BY p.nombre_producto
ORDER BY unidades_vendidas DESC
LIMIT 1;

-- Análisis mensual de ventas
SELECT
    DATE_TRUNC('month', fecha_venta) AS mes,
    SUM(p.precio * v.cantidad) AS ingresos_mensuales
FROM ventas v
JOIN productos p ON v.producto_id = p.producto_id
GROUP BY mes
ORDER BY mes;
