INSERT INTO Departamentos (departamento) VALUES
('San Salvador'),
('Santa Ana'),
('San Miguel'),
('La Libertad'),
('Usulut�n');

INSERT INTO Municipios (municipio, iddepto) VALUES
('San Salvador', 1),
('Santa Ana', 2),
('San Miguel', 3),
('Antiguo Cuscatl�n', 4),
('Usulut�n', 5);

INSERT INTO Distritos (distrito, idmunicipio) VALUES
('Centro Hist�rico', 1),
('Centro', 2),
('Zona Rosa', 1),
('Ciudad Vieja', 3),
('Zacatecoluca', 5);

INSERT INTO Direcciones (direccion, referencias, codigoPostal, pais, iddistrito) VALUES
('123 Calle Principal', 'Cerca del parque', '1101', 'El Salvador', 1),
('456 Avenida Central', 'Frente al mercado', '2202', 'El Salvador', 2),
('789 Calle Comercial', 'Junto al banco', '3303', 'El Salvador', 3),
('101 Calle Antigua', 'Al lado de la iglesia', '4404', 'El Salvador', 4),
('202 Calle Nueva', 'Atr�s de la escuela', '5505', 'El Salvador', 5);

INSERT INTO Clientes (nombreCliente, apellidoCliente, dui, telefono, eMail, iddireccion) VALUES
('Juan', 'P�rez', '00123456789', '2222-3333', 'juan@example.com', 1),
('Mar�a', 'G�mez', '00987654321', '7777-8888', 'maria@example.com', 2),
('Luis', 'Ram�rez', '00332211000', '5555-6666', 'luis@example.com', 3),
('Ana', 'L�pez', '00557788999', '9999-0000', 'ana@example.com', 4),
('Carlos', 'S�nchez', '00446655222', '3333-1111', 'carlos@example.com', 5);

INSERT INTO Empleados (nombreEmpleado, apellidoCliente, dui, ISSS, telefono, eMail, iddireccion) VALUES
('Eduardo', 'Garc�a', '00123456789', 'ISSS12345', '2222-3333', 'eduardo@example.com', 1),
('Sof�a', 'Mart�nez', '00987654321', 'ISSS67890', '7777-8888', 'sofia@example.com', 2),
('Luis', 'Hern�ndez', '00332211000', 'ISSS23456', '5555-6666', 'luis@example.com', 3),
('Ana', 'L�pez', '00557788999', 'ISSS78901', '9999-0000', 'ana@example.com', 4),
('Carlos', 'S�nchez', '00446655222', 'ISSS34567', '3333-1111', 'carlos@example.com', 5);

INSERT INTO Proveedores (contacto, telefono, email, compania, iddireccion) VALUES
('Juan P�rez', '2222-3333', 'juan@example.com', 'ProveedorA', 1),
('Mar�a G�mez', '7777-8888', 'maria@example.com', 'ProveedorB', 2),
('Luis Ram�rez', '5555-6666', 'luis@example.com', 'ProveedorC', 3),
('Ana L�pez', '9999-0000', 'ana@example.com', 'ProveedorD', 4),
('Carlos S�nchez', '3333-1111', 'carlos@example.com', 'ProveedorE', 5);

INSERT INTO categoriasProductos (categoria, detalles) VALUES
('Tel�fonos inteligentes', 'Smartphones y accesorios'),
('Televisores', 'Televisores de alta definici�n'),
('Computadoras', 'Laptops y computadoras de escritorio'),
('Audio', 'Equipos de sonido y auriculares'),
('C�maras', 'C�maras fotogr�ficas y videoc�maras');

INSERT INTO DetallesStok (cantidadStok, descripcion) VALUES
(50, 'En stock'),
(20, 'Agotado'),
(35, 'En reposici�n'),
(60, 'En stock'),
(15, 'Agotado');

INSERT INTO Productos (nombreP, descripcion, precio, idproveedor, idcategoria, iddstok) VALUES
('iPhone 13 Pro', 'Tel�fono inteligente de �ltima generaci�n', 1099.99, 1, 1, 1),
('Samsung QLED 4K', 'Televisor QLED 4K de 55 pulgadas', 799.99, 2, 2, 2),
('Dell XPS 13', 'Laptop ultradelgada con pantalla InfinityEdge', 999.99, 3, 3, 1),
('Sony WH-1000XM4', 'Auriculares con cancelaci�n de ruido', 299.99, 4, 4, 3),
('Canon EOS R6', 'C�mara mirrorless de alta calidad', 2499.99, 5, 5, 1);

INSERT INTO Facturas (fechaFactura, comentario, idcliente, idempleado) VALUES
('2023-07-01', 'Venta de verano', 1, 1),
('2023-07-02', 'Promoci�n de productos nuevos', 2, 2),
('2023-07-03', 'Descuento de temporada', 3, 3),
('2023-07-04', 'Venta especial de fin de semana', 4, 4),
('2023-07-05', 'Oferta de electr�nica nocturna', 5, 5);

INSERT INTO DetallesFacturas (idproducto, idfactura, cantidad, iva, descuento) VALUES
(1, 1, 2, 10.00, 5.00),
(2, 2, 3, 15.00, 7.50),
(3, 3, 1, 5.00, 2.50),
(4, 4, 4, 20.00, 10.00),
(5, 5, 2, 10.00, 5.00);