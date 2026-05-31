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

INSERT INTO biblioteca.prestamos (id_usuario,id_libro,fecha_esperada_devolucion,fecha_prestamo,fecha_devolucion,estado)
VALUES
(1,1,'2026-04-07','2026-08-14','2026-09-25','2026-12-01','ACTIVO'),
(2,2,'2026-11-12','2026-03-07','2026-08-30','2026-02-14','DEVUELTO'),
(3,3,'2026-09-10','2026-08-01','2026-07-02','2026-04-09','VENCIDO'),
(4,4,'2026-05-25','2026-10-07','2026-05-04','2026-05-08','ACTIVO');
