-- use tiendaElectronica;

-- consultas con operadores aritmeticos

--1 
SELECT idProducto, 
		nombreP, 
		descripcion, 
		precio, 
		(precio * 0.13) AS IVA 
		FROM Productos
	WHERE precio > 1000;

-- 2
SELECT idproducto, 
		SUM(cantidad * precioUnidad - descuetoUnidad) AS PrecioTotal
		FROM Compras
		GROUP BY idproducto;

-- 3
SELECT * 
	FROM Pedidos
	WHERE fechaPedido > '2023-09-22' AND fechaRecibido < '2023-10-30';

-- 4
SELECT idEmpleado,
		nombresEmpleado,
		apellidosEmpleado,
		fechaNacimiento,
    (YEAR(GETDATE()) - YEAR(fechaNacimiento)) AS EdadEmpleado
	FROM Empleados;

-- 5
SELECT idProveedor, 
		nombresContacto, 
		ApellidosContacto, 
		telefono,
		eMail
	FROM Proveedores
	WHERE eMail LIKE '%@outlook.com';

-- consultas multitabla

--1
SELECT f.idFactura, c.nombresCliente, d.cantidad as 'Cantidad de Productos'
	FROM Facturas as f
	INNER JOIN Clientes as c ON f.idcliente = c.IDCliente
	INNER JOIN DetallesFacturas as d ON f.idFactura = d.idFactura;

-- 2
SELECT idCliente, concat(nombresCliente,' ',apellidosCliente) as Cliente, eMail
	FROM Clientes
	WHERE idCliente IN (
		SELECT idcliente
		FROM Facturas);

-- 3
SELECT * FROM Facturas;
SELECT IDCliente, nombresCliente, apellidosCliente
	FROM Clientes
	WHERE IDCliente IN (
		SELECT idcliente
		FROM Facturas
		WHERE fechaFactura BETWEEN '2023-09-20' AND '2023-09-22');

-- 4
select * from Proveedores;
select * from Compras;
select * from Pedidos;
SELECT p.nombresContacto, p.ApellidosContacto, a.idPedido, c.cantidad
	FROM Proveedores as p
	LEFT JOIN Pedidos as a ON p.idProveedor = a.idProveedor
	LEFT join Compras as c ON a.idPedido = c.idpedido;

--5 
SELECT p.nombreP, d.cantidadStok
	FROM Productos as p
	INNER JOIN DetallesStok as d ON p.idStok = d.idStok;



