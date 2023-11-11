-- use tiendaElectronica;

-- secuencias
-- reportes nuevos clientes
create table ReporteNuevosClientes(
	idReporteNuevosClientes int primary key,
	idCliente int,
	fechainsercion datetime,
	iddireccion int
);

-- creacion de la secuencia
create sequence idReporteNuevosClientes
	start with 1
	increment by 1
	minvalue 1
	maxvalue 999999999

create trigger ClientesNuevos
on Clientes
after insert
as
begin
	-- Variables para almacenar la información
    declare @ID_Cliente int
    declare @FechaInsercion datetime
    declare @ID_Direccion int
	-- Obtiene la información de la inserción
    select top 1 
	@ID_Cliente = IDCliente, 
	@FechaInsercion = getdate(), 
	@ID_Direccion = idDireccion
    from inserted

	insert into ReporteNuevosClientes values
	-- aca se cambia ya que antes era identity 
    (next value for idReporteNuevosClientes, @ID_Cliente, @FechaInsercion, @ID_Direccion)

	print 'Se realizó el registro de un nuevo cliente con Fecha y Hora: ' + 
	cast(@FechaInsercion as varchar(100)) + ' y numero de cliente ' + 
	cast(@ID_Cliente as varchar(10))
end;


INSERT INTO Clientes VALUES
	-- nombresCliente, apellidosCliente, dui, telefono, eMail, idDireccion)
    ('Juan Alberto', 'Pérez Echeverria', '23345668-1', '7990-1434', 'juanAl@email.com', '1');

select * from ReporteNuevosClientes;