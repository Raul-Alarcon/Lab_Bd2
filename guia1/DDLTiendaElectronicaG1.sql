-- create database tiendaElectronica;
-- use tiendaElectronica;

 -- creacion de tablas requeridas para direcciones 
create table Departamentos(
	idDepartamento char(2) primary key,
	Departamento varchar(60) not null,
	Pais varchar(60)
);
create table Municipios(
	idMunicipio char(3) primary key,
	Municipio varchar(60) not null,
	idDepartamento char(2) not null
);
create table Distritos(
	idDistrito varchar(5) primary key,
	Distrito varchar(60) not null,
	idMunicipio char(3) not null
);
create table Direcciones(
	idDireccion int primary key identity(1, 1),
    Linea1 varchar(100) not null,
    Linea2 varchar(100),
    idDistrito varchar(5) not null,
    CodigoPostal int,
);

-- cliente
create table Clientes(
	IDCliente int primary key identity(1,1),
	nombresCliente varchar(20) not null,
	apellidosCliente varchar(30) not null,
	dui nchar(11) not null,
	telefono nchar(11),
	eMail varchar(40),
	idDireccion int
);

-- empleados
create table Cargos(
	idCargo int primary key identity(1,1),
	cargo varchar(50) not null
);
create table Empleados(
	idEmpleado int primary key identity(1,1),
	nombresEmpleado varchar(20) not null,
	apellidosEmpleado varchar(30) not null,
	fechaNacimiento date not null,
	dui nchar(11) not null,
	ISSS nchar(15) not null,
	telefono nchar(11) not null,
	eMail varchar(40),
	cargo int not null,
	idDireccion int not null
);

-- roles
create table Opciones(
	idOpcion int primary key identity(1,1),
	opcion varchar(50) not null
);
create table Roles(
	idRol int primary key identity(1,1),
	mombreRol varchar(50) not null
);
create table AsignacionRolesOpciones(
	idAsignacionRol int primary key identity(1,1),
	idRol int not null,
	idOpcion int not null
);
-- usuarios para la manipuacion de datos
create table Usuarios(
	IDUsuario int primary key identity(1,1),
	idEmpleado int not null,
	idRol int not null,
	usuario varchar(50) not null,
	clave nchar(40) not null
);

-- Proveedores
create table Proveedores(
	idProveedor int primary key identity(1,1),
	nombresContacto varchar(20),
	ApellidosContacto varchar(30),
	telefono nchar(11) not null,
	eMail varchar(30) not null,
	compania varchar(20) not null,
	idDireccion int not null
);
-- Productos
create table CategoriasProductos(
	idCategoria int primary key identity(1,1),
	categoria varchar(40),
	detalles varchar(50)
);
create table DetallesStok(
	idStok int primary key identity(1,1),
	cantidadStok int not null,
	descripcion varchar(30)
);
create table Productos(
	idProducto int primary key identity(1,1),
	nombreP varchar(30) not null,
	descripcion varchar (45),
	precio money not null,
	idCategoria int not null,
	idStok int not null
);
-- compras a proveedores
create table Pedidos(
	idPedido int primary key identity(1,1),
	idProveedor int not null,
	fechaPedido datetime not null,
	fechaRecibido datetime not null,
	comentario varchar(100)
);
create table Compras(
	IDCompra int primary key identity(1,1),
	idproducto int not null,
	idpedido int not null,
	cantidad int not null,
	precioUnidad money not null,
	descuetoUnidad money not null,
	comentarios varchar(200)
);
-- facturas
create table Facturas(
	idFactura int primary key identity(1,1),
	fechaFactura datetime not null,
	comentario varchar(40),
	idcliente int not null,
	idempleado int not null
);
create table DetallesFacturas(
	idDetalles int primary key identity(1,1),
	idProducto int not null,
	idFactura int not null,
	cantidad int not null,
	iva money not null,
	descuento money not null
);

-- llaves foraneas

-- direcciones
alter table Municipios add FOREIGN key (idDepartamento) references Departamentos(idDepartamento);
alter table Distritos add FOREIGN key (idMunicipio) references Municipios(idMunicipio);
alter table Direcciones add FOREIGN key (idDistrito) references Distritos(idDistrito);
-- cliente
alter table Clientes add FOREIGN key (idDireccion) references Direcciones(idDireccion);
-- empleado
alter table Empleados add FOREIGN key (idDireccion) references Direcciones(idDireccion);
alter table Empleados add FOREIGN key (cargo) references Cargos(idCargo);
-- roles
alter table AsignacionRolesOpciones add FOREIGN key (idRol) references Roles(idRol);
alter table AsignacionRolesOpciones add FOREIGN key (idOpcion) references Opciones(idOpcion);

alter table Usuarios add FOREIGN key (idRol) references Roles(idRol);
alter table Usuarios add FOREIGN key (idEmpleado) references Empleados(idEmpleado);
-- productos 
alter table Proveedores add FOREIGN key (idDireccion) references Direcciones(idDireccion);

alter table Productos add FOREIGN key (idCategoria) references CategoriasProductos(idCategoria);
alter table Productos add FOREIGN key (idStok) references DetallesStok(idStok);

alter table Pedidos add FOREIGN key (idProveedor) references Proveedores(idProveedor);

alter table Compras add FOREIGN key (idProducto) references Productos(idProducto);
alter table Compras add FOREIGN key (idPedido) references Pedidos(idPedido);
-- facturas

alter table Facturas add FOREIGN key (idEmpleado) references Empleados(idEmpleado);
alter table Facturas add FOREIGN key (idCliente) references Clientes(idCliente);

alter table DetallesFacturas add FOREIGN key (idProducto) references Productos(idProducto);
alter table DetallesFacturas add FOREIGN key (idFactura) references Facturas(idFactura);