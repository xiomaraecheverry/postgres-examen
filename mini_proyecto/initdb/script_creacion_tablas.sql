CREATE SCHEMA IF NOT EXISTS biblioteca;

CREATE TABLE biblioteca.usuarios( 
 id_usuario SERIAL PRIMARY KEY,
 nombre VARCHAR(50) NOT NULL,
 correo VARCHAR(100) NOT NULL UNIQUE,
 telefono VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE biblioteca.categorias(
 id_categoria SERIAL PRIMARY KEY,
 nombre VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE biblioteca.autores(
 id_autor SERIAL PRIMARY KEY,
 nombre VARCHAR(50) NOT NULL
);

CREATE TABLE biblioteca.libros(
 id_libro SERIAL PRIMARY KEY,
 titulo VARCHAR(50) NOT NULL,
 ISBN VARCHAR(20) NOT NULL UNIQUE,
 id_autor INT NOT NULL,
 id_categoria INT NOT NULL,
 CONSTRAINT fk_libro_autor FOREIGN KEY(id_autor) REFERENCES biblioteca.autores(id_autor) ON DELETE CASCADE,
 CONSTRAINT fk_libro_categoria FOREIGN KEY(id_categoria) REFERENCES biblioteca.categorias(id_categoria) ON DELETE CASCADE
);


CREATE TABLE biblioteca.prestamos(
 id_prestamo SERIAL PRIMARY KEY,
 id_usuario INT NOT NULL,
 id_libro INT NOT NULL,
 fecha_esperada_devolucion DATE NOT NULL,
 fecha_prestamo DATE NOT NULL DEFAULT CURRENT_DATE,
 fecha_devolucion DATE,
 estado VARCHAR(15) NOT NULL DEFAULT 'ACTIVO',
 CONSTRAINT fk_prestamo_usuario FOREIGN KEY (id_usuario) REFERENCES biblioteca.usuarios(id_usuario) ON DELETE CASCADE,
 CONSTRAINT fk_prestamo_libro FOREIGN KEY (id_libro) REFERENCES biblioteca.libros(id_libro) ON DELETE CASCADE,
 CONSTRAINT chk_fechas CHECK (fecha_esperada_devolucion >= fecha_prestamo),
 CONSTRAINT chk_estado CHECK (estado IN('ACTIVO', 'DEVUELTO','VENCIDO'))
);