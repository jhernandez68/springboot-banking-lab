INSERT INTO clientes (id, documento, nombre_completo, correo, activo, fecha_creacion) VALUES
(1, '100000001', 'Jhoan Hernandez', 'jhoan@bankinglab.local', 1, '2026-09-01T08:00:00'),
(2, '100000002', 'Laura Gomez', 'laura@bankinglab.local', 1, '2026-09-02T09:15:00'),
(3, '100000003', 'Mateo Torres', 'mateo@bankinglab.local', 1, '2026-09-03T10:30:00'),
(4, '100000004', 'Camila Ruiz', 'camila@bankinglab.local', 1, '2026-09-04T11:45:00'),
(5, '100000005', 'Andres Pena', 'andres@bankinglab.local', 0, '2026-09-05T14:10:00');

INSERT INTO cuentas (id, numero_cuenta, cliente_id, tipo, saldo, activa, fecha_creacion) VALUES
(1, '0010000001', 1, 'AHORROS', 1500000.00, 1, '2026-09-01T08:30:00'),
(2, '0010000002', 1, 'CORRIENTE', 350000.00, 1, '2026-09-01T08:35:00'),
(3, '0020000001', 2, 'AHORROS', 2800000.00, 1, '2026-09-02T09:30:00'),
(4, '0030000001', 3, 'AHORROS', 75000.00, 1, '2026-09-03T10:45:00'),
(5, '0040000001', 4, 'AHORROS', 4200000.00, 1, '2026-09-04T12:00:00'),
(6, '0050000001', 5, 'CORRIENTE', 900000.00, 0, '2026-09-05T14:30:00'),
(7, '0020000002', 2, 'AHORROS', 125000.00, 1, '2026-09-06T16:00:00');

INSERT INTO movimientos (id, cuenta_id, tipo, monto, descripcion, referencia, fecha_creacion) VALUES
(1, 1, 'DEPOSITO', 500000.00, 'Deposito inicial', 'DEP-0001', '2026-09-01T08:31:00'),
(2, 1, 'DEPOSITO', 1200000.00, 'Pago de nomina', 'DEP-0002', '2026-09-15T08:00:00'),
(3, 1, 'RETIRO', 200000.00, 'Retiro cajero', 'RET-0001', '2026-09-18T17:20:00'),
(4, 2, 'DEPOSITO', 400000.00, 'Deposito inicial', 'DEP-0003', '2026-09-01T08:36:00'),
(5, 2, 'RETIRO', 50000.00, 'Compra debito', 'RET-0002', '2026-09-20T13:10:00'),
(6, 3, 'DEPOSITO', 3000000.00, 'Deposito inicial', 'DEP-0004', '2026-09-02T09:31:00'),
(7, 3, 'RETIRO', 200000.00, 'Pago servicio', 'RET-0003', '2026-09-22T10:05:00'),
(8, 4, 'DEPOSITO', 100000.00, 'Deposito inicial', 'DEP-0005', '2026-09-03T10:46:00'),
(9, 4, 'RETIRO', 25000.00, 'Compra comercio', 'RET-0004', '2026-09-24T19:40:00'),
(10, 5, 'DEPOSITO', 4000000.00, 'Deposito inicial', 'DEP-0006', '2026-09-04T12:01:00'),
(11, 5, 'TRANSFERENCIA_ENTRADA', 200000.00, 'Transferencia recibida', 'TRF-0001', '2026-09-26T15:00:00'),
(12, 3, 'TRANSFERENCIA_SALIDA', 200000.00, 'Transferencia enviada', 'TRF-0001', '2026-09-26T15:00:00'),
(13, 7, 'DEPOSITO', 125000.00, 'Deposito inicial', 'DEP-0007', '2026-09-06T16:01:00');
