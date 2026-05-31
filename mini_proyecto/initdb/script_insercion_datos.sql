INSERT INTO biblioteca.usuarios (nombre,correo,telefono)
VALUES
('david lopez','davidd@gmail.com','3108947854'),
('juan perez', 'juan@gmail.com','3205404527'),
('laura gomez','gomez@gmail.com','315465897');

INSERT INTO biblioteca.categorias (nombre)
VALUES 
('ciencia ficcion'),
('novelas'),
('accion'),
('romance');

INSERT INTO biblioteca.autores (nombre)
VALUES
('gabriel garcia marquez'),
('julio verne'),
('mario mendoza')
('william Shakespeare');

INSERT INTO biblioteca.libros (titulo,isbn,id_autor,id_categoria)
VALUES
('Don Quijote de la Mancha','421-4565458415',1,4),
('Cien años de soledad', '123-54644545',3,1),
('Orgullo y prejuicio', '478-5454445455',4,2),
('Crimen y castigo', '888-5454545648445',2,3);

INSERT INTO biblioteca.prestamos (id_usuario, id_libro, fecha_prestamo, fecha_esperada_devolucion, fecha_devolucion, estado) VALUES
(1, 1, '2026-05-25', '2026-06-05', NULL, 'ACTIVO'),
(1, 2, '2026-05-10', '2026-05-20', '2026-05-18', 'DEVUELTO'),
(2, 3, '2026-05-10', '2026-05-20', NULL, 'VENCIDO'),
(3, 4, '2026-05-26', '2026-06-02', NULL, 'ACTIVO');
