# Mini-proyecto: Sistema Básico de Biblioteca Académica

## Contexto
Una institución educativa necesita una base de datos inicial para gestionar los préstamos de libros de su biblioteca.

Actualmente, la información se maneja en hojas de cálculo, lo que genera problemas como:
* Registros duplicados.
* Libros prestados sin trazabilidad.
* Usuarios sin identificación clara.
* Dificultad para saber qué libros están disponibles.
* Falta de control sobre fechas de préstamo y devolución.

El aprendiz debe diseñar e implementar una primera versión relacional del sistema.

---

## Requisitos Funcionales
El sistema debe permitir almacenar información sobre:

1. Usuarios de la biblioteca.
2. Libros.
3. Autores.
4. Categorías.
5. Préstamos.
6. Estado de los préstamos.
7. Fecha de préstamo.
8. Fecha esperada de devolución.
9. Fecha real de devolución.

---

## Tablas Mínimas Requeridas
El aprendiz debe crear como mínimo las siguientes tablas:

| Tabla | Propósito |
| :--- | :--- |
| `usuarios` | Personas que pueden solicitar préstamos |
| `libros` | Libros disponibles en la biblioteca |
| `autores` | Autores de los libros |
| `categorias` | Clasificación temática de los libros |
| `prestamos` | Registro de préstamos realizados |

---

## Reglas Mínimas (Restricciones del Negocio)
1. Todo usuario debe tener un correo único.
2. Todo libro debe tener un ISBN único.
3. Un libro pertenece a una categoría.
4. Un libro tiene un autor principal.
5. Un préstamo pertenece a un usuario.
6. Un préstamo pertenece a un libro.
7. No se puede registrar un préstamo para un usuario inexistente.
8. No se puede registrar un préstamo para un libro inexistente.
9. La fecha esperada de devolución debe ser posterior o igual a la fecha de préstamo.
10. El estado del préstamo solo puede ser `ACTIVO`, `DEVUELTO` o `VENCIDO`.

---

## Entregables del Aprendiz
La estructura del proyecto en el repositorio debe ser la siguiente:

```text
mini-proyecto/
├─ enunciado.md
├─ script_creacion_tablas.sql
├─ script_insercion_datos.sql
├─ consultas_validacion.sql
└─ reflexion.md
