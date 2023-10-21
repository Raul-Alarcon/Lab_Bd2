-- use tiendaElectronica;
create procedure [NRCliente]
	@nombresCliente varchar(60),
	@apellidosCliente varchar(60),
	@dui varchar(60),
	@telefono varchar(60),
	@eMail varchar(60),
	@iddireccion varchar(60)

	as
	begin 

	insert into [Clientes] (nombresCliente, apellidosCliente, dui, telefono, eMail, iddireccion)
	values 
	(@nombresCliente, 
	@apellidosCliente, 
	@dui, 
	@telefono,
	@eMail, 
	@iddireccion);

	select * from Clientes;

	end;



	exec [NRCliente] 
	@nombresCliente = 'Raul Alejandro' , 
	@apellidosCliente= 'Hernandez Sosa' ,
	@dui = '122334567-0' , 
	@telefono = '3451-5623' , 
	@eMail = 'alejandro@gmail.com',
	@iddireccion = '3';
