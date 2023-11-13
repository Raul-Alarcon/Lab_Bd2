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

-- valor del nextvalue(aca se pierde el valor que muestra)

select next value for idReporteNuevosClientes as valorSiguiente;

-- consultar valor actual
select current_value from sys.sequences where name = 'idReporteNuevosClientes';

-- sequences en el sistema
select * from sys.sequences;

-- borrado de sequences
-- drop sequence idReporteNuevosClientes;