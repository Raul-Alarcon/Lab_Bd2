-- trigger 1 para guia 7

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
    (@ID_Cliente, @FechaInsercion, @ID_Direccion)

	print 'Se realizó el registro de un nuevo cliente con Fecha y Hora: ' + 
	cast(@FechaInsercion as varchar(100)) + ' y numero de cliente ' + 
	cast(@ID_Cliente as varchar(10))
end;

create table ReporteNuevosClientes(
	idReporteNuevosClientes int primary key identity(1,1),
	idCliente int,
	fechainsercion datetime,
	iddireccion int
);

exec [NRCliente] 
	@nombreCliente = 'Raul Alberto' , 
	@apellidoCliente= 'Hernandez Bran' ,
	@dui = '231798401-4' , 
	@telefono = '7151-5673' , 
	@eMail = 'albert@outlook.com',
	@iddireccion = '1';