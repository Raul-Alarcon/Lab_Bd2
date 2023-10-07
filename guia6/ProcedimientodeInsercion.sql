create procedure [NRCliente]

	@nombreCliente varchar(60),
	@apellidoCliente varchar(60),
	@dui varchar(60),
	@telefono varchar(60),
	@eMail varchar(60),
	@iddireccion varchar(60)

	as
	begin 

	insert into [Clientes] (nombreCliente, apellidoCliente, dui, telefono, eMail, iddireccion)
	values 
	(@nombreCliente, 
	@apellidoCliente, 
	@dui, 
	@telefono,
	@eMail, 
	@iddireccion);

	select * from Clientes;

	end

	exec [NRCliente] @nombreCliente = 'Raul' , @apellidoCliente= 'Alarcon' , @dui = '00238734618' , @telefono = '3451-5623' , @eMail = 'raul@example.com'
	, @iddireccion = '1'
