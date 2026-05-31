SELECT
l.id_libro,
l.titulo,
l.ISBN,
a.nombre AS autor_principal,
c.nombre AS categorias
FROM biblioteca.libros l
JOIN biblioteca.autores a ON 
l.id_autor = a.id_autor
JOIN biblioteca.categorias c ON
l.id_categoria = c.id_categoria;

SELECT 
    p.id_prestamo,
    u.nombre AS usuario,
    l.titulo AS libro,
    p.fecha_prestamo,
    p.fecha_esperada_devolucion,
    p.estado
FROM biblioteca.prestamos p
JOIN biblioteca.usuarios u ON p.id_usuario = u.id_usuario
JOIN biblioteca.libros l ON p.id_libro = l.id_libro
WHERE p.estado = 'ACTIVO';

SELECT 
    p.id_prestamo,
    l.titulo AS libro,
    p.fecha_prestamo,
    p.fecha_esperada_devolucion,
    p.fecha_devolucion,
    p.estado
FROM biblioteca.prestamos p
JOIN biblioteca.libros l ON p.id_libro = l.id_libro
WHERE p.id_usuario = 1;

SELECT 
    id_libro, 
    titulo, 
    ISBN
FROM biblioteca.libros
WHERE id_libro NOT IN (
    SELECT id_libro 
    FROM biblioteca.prestamos 
    WHERE estado = 'ACTIVO'
);


SELECT 
    u.id_usuario, 
    u.nombre, 
    COUNT(p.id_prestamo) AS total_prestamos
FROM biblioteca.usuarios u
LEFT JOIN biblioteca.prestamos p ON u.id_usuario = p.id_usuario
GROUP BY u.id_usuario, u.nombre;


SELECT 
    p.id_prestamo, 
    u.nombre AS usuario, 
    l.titulo AS libro, 
    p.fecha_esperada_devolucion, 
    p.estado
FROM biblioteca.prestamos p
JOIN biblioteca.usuarios u ON p.id_usuario = u.id_usuario
JOIN biblioteca.libros l ON p.id_libro = l.id_libro
WHERE p.fecha_esperada_devolucion < '2026-05-28' AND p.estado != 'DEVUELTO';


SELECT 
    l.titulo AS libro, 
    p.fecha_esperada_devolucion, 
    p.estado
FROM biblioteca.prestamos p
JOIN biblioteca.libros l ON p.id_libro = l.id_libro
WHERE p.estado = 'ACTIVO';


SELECT 
    u.nombre, 
    COUNT(p.id_prestamo) AS total_prestamos
FROM biblioteca.usuarios u
LEFT JOIN biblioteca.prestamos p ON u.id_usuario = p.id_usuario
GROUP BY u.id_usuario, u.nombre
ORDER BY total_prestamos DESC;