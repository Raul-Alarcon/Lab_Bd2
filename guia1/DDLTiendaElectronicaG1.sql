-- create database tiendaElectronica;
-- use tiendaElectronica;

create table Departamentos(
	IDDepto int primary key identity(1,1),
	departamento varchar(30) not null,
);
create table Municipios(
	IDMunicipio int primary key identity(1,1),
	municipio varchar(30)  not null,
	iddepto int not null,

	FOREIGN key (iddepto) references Departamentos(IDDepto)
);
create table Distritos(
	IDDistrito int primary key identity(1,1),
	distrito varchar(30)  not null,
	idmunicipio int not null,
	--  llaves
	FOREIGN key (idmunicipio) references Municipios(IDMunicipio)
);
create table Direcciones(
	IDDireccion int primary key identity(1,1),
	direccion varchar(50) not null,
	referencias varchar(40),
	codigoPostal nchar(5),
	pais varchar(20),
	iddistrito int not null,
	--  llaves
	FOREIGN key (iddistrito) references Distritos(IDDistrito)
);
create table Clientes(
	IDCliente int primary key identity(1,1),
	nombreCliente varchar(20) not null,
	apellidoCliente varchar(30) not null,
	dui nchar(11) not null,
	telefono nchar(11),
	eMail varchar(40),
	iddireccion int not null,
	--  llaves
	FOREIGN key (iddireccion) references Direcciones(IDDireccion)
);
create table Empleados(
	IDEmpleado int primary key identity(1,1),
	nombreEmpleado varchar(20) not null,
	apellidoCliente varchar(30) not null,
	dui nchar(11) not null,
	ISSS nchar(15) not null,
	telefono nchar(11) not null,
	eMail varchar(40),
	iddireccion int not null,
	--  llaves
	FOREIGN key (iddireccion) references Direcciones(IDDireccion)
);

create table Proveedores(
	IDProveedor int primary key identity(1,1),
	contacto varchar(30),
	telefono nchar(11) not null,
	email varchar(30) not null,
	compania varchar(20) not null,
	iddireccion int not null,
	--  llaves
	FOREIGN key (iddireccion) references Direcciones(IDDireccion)
);

create table categoriasProductos(
	IDCategoria int primary key identity(1,1),
	categoria varchar(40),
	detalles varchar(50)
);

create table DetallesStok(
	IDStok int primary key identity(1,1),
	cantidadStok int not null,
	descripcion varchar(30)
);

create table Productos(
	IDProducto int primary key identity(1,1),
	nombreP varchar(30) not null,
	descripcion varchar (45) not null,
	precio money not null,
	idproveedor int not null,
	idcategoria int not null,
	iddstok int not null, 
	--  llaves
	FOREIGN key (idcategoria) references categoriasProductos(IDCategoria),
	FOREIGN key (iddstok) references DetallesStok(IDStok),
	FOREIGN key (idproveedor) references Proveedores(IDProveedor)
);

create table Facturas(
	IDFactura int primary key identity(1,1),
	fechaFactura datetime not null,
	comentario varchar(40),
	idcliente int not null,
	idempleado int not null,
	--  llaves
	FOREIGN key (idempleado) references Empleados(IDEmpleado),
	FOREIGN key (idcliente) references Clientes(IDCliente)
);

create table DetallesFacturas(
	IDDetalles int primary key identity(1,1),
	idproducto int not null,
	idfactura int not null,
	cantidad int not null,
	iva money not null,
	descuento money not null,
	--  llaves
	FOREIGN key (idproducto) references Productos(IDProducto),
	FOREIGN key (idfactura) references Facturas(IDFactura)
);