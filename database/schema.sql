PRAGMA foreign_keys = ON;

DROP TABLE IF EXISTS movimientos;
DROP TABLE IF EXISTS cuentas;
DROP TABLE IF EXISTS clientes;

CREATE TABLE clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    documento TEXT NOT NULL UNIQUE,
    nombre_completo TEXT NOT NULL,
    correo TEXT NOT NULL UNIQUE,
    activo INTEGER NOT NULL DEFAULT 1,
    fecha_creacion TEXT NOT NULL
);

CREATE TABLE cuentas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    numero_cuenta TEXT NOT NULL UNIQUE,
    cliente_id INTEGER NOT NULL,
    tipo TEXT NOT NULL,
    saldo NUMERIC NOT NULL DEFAULT 0,
    activa INTEGER NOT NULL DEFAULT 1,
    fecha_creacion TEXT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE movimientos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    cuenta_id INTEGER NOT NULL,
    tipo TEXT NOT NULL,
    monto NUMERIC NOT NULL,
    descripcion TEXT NOT NULL,
    referencia TEXT,
    fecha_creacion TEXT NOT NULL,
    FOREIGN KEY (cuenta_id) REFERENCES cuentas(id)
);
