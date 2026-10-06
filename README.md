# Spring Boot Banking Lab

Laboratorio práctico para aprender Spring Boot, Spring Web, Spring Data JPA y SQLite mediante ejercicios progresivos.

El repositorio contiene únicamente el proyecto base y la guía en PDF. Las soluciones de los ejercicios no están incluidas.

## Requisitos

- Java 17 o superior
- IntelliJ IDEA
- Maven integrado en IntelliJ o Maven 3.6.3+

## Ejecutar

1. Abre la carpeta como proyecto Maven.
2. Espera a que IntelliJ descargue las dependencias.
3. Ejecuta `BankingLabApplication`.
4. Prueba `GET http://localhost:8080/api/demo/saludo/Jhoan`.
5. Sigue `Spring_Boot_Practico_JPA_SQLite_Jhoan_v2.pdf` capítulo por capítulo.

## Base de datos

El archivo `banking-lab.db` ya viene creado y con datos de práctica.

- `clientes`: 5 registros
- `cuentas`: 7 registros
- `movimientos`: 13 registros

Para restaurar los datos iniciales:

```bash
python database/reset_database.py
```

También están disponibles `database/schema.sql` y `database/seed.sql` para revisar el esquema y los datos iniciales.

## Qué viene resuelto

Solo se incluye un `DemoController` pequeño para mostrar un Controller real funcionando antes de los ejercicios.

Los paquetes `entity`, `repository`, `service`, `dto` y `exception` están vacíos a propósito. El PDF presenta primero un ejemplo y luego propone ejercicios para implementar variaciones sin entregar la solución.

## Configuración

La propiedad `spring.jpa.hibernate.ddl-auto=none` evita que Hibernate modifique el esquema del archivo SQLite. Las tablas ya existen.
