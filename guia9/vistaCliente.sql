-- use tiendaElectronica;
-- vista para mostrar la informacion de cada cliente

create view vistaCliente as
select 
	cli.IDCliente, cli.nombresCliente, cli.apellidosCliente, cli.dui, cli.telefono, cli.eMail, 
	dis.Distrito, 
	mu.Municipio, 
	dep.Departamento, 
	di.Linea1, di.Linea2, di.CodigoPostal
from 
	Clientes as cli
	inner join Direcciones as di on cli.idDireccion = di.idDireccion
	inner join Distritos as dis on di.idDistrito = dis.idDistrito
	inner join Municipios as mu on dis.idMunicipio = mu.idMunicipio
	inner join Departamentos as dep on mu.idDepartamento = dep.idDepartamento;

select * from vistaCliente;