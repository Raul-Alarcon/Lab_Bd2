--DCL
-- BD TIENDA ELECTRONICA
-- use tiendaElectronica;

/*select * from empleados as e
inner join Cargos as c on e.idCargo = c.idCargo;*/
go
create role Administrador
create role GerenteGeneral
create role GerenteAlmacen
create role EmpleadoVentas
create role EmpleadoAlmacen
create role RRHH;

-- LOGINS
go
create login login_admin_joseperez
with password = 'root';
go
create login login_gg_diegogonzales
with password = 'Gonzalesz1234';
go
create login login_ga_raulramirez
with password = 'Ramirez1234';
go
create login login_ev_juanaperez
with password = 'Perez1234';
go
create login login_ea_melvincastro
with password = 'Castro1234';
go
create login login_rrhh_juanhernandez
with password = 'Hernandez1234';

-- USUARIOS
go
create user admin_joseperez
for login login_admin_joseperez;
go
create user gg_diegogonzales
for login login_gg_diegogonzales;
go
create user ga_raulramirez
for login login_ga_raulramirez;
go
create user ev_juanaperez
for login login_ev_juanaperez;
go
create user ea_melvincastro
for login login_ea_melvincastro;
go
create user rrhh_juanhernandez
for login login_rrhh_juanhernandez;

-- AGREGAR USUARIOS A ROLES
go
alter role Administrador add member admin_joseperez;
alter role  GerenteGeneral add member gg_diegogonzales;
alter role GerenteAlmacen add member ga_raulramirez;
alter role EmpleadoVentas add member ev_juanaperez;
alter role EmpleadoAlmacen add member ea_melvincastro;
alter role RRHH add member rrhh_juanhernandez;

-- select * from INFORMATION_SCHEMA.TABLES;
-- OTORGAR PERMISOS (En base a las opciones)
go
-- Administrador
GRANT UPDATE, INSERT, SELECT ON dbo.Departamentos TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Municipios TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Distritos TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Direcciones TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Clientes TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Cargos TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Empleados TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Opciones TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Roles TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.AsignacionRolesOpciones TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Usuarios TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Proveedores TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.CategoriasProductos TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.DetallesStok TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Productos TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Pedidos TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Compras TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.Facturas TO Administrador;
GRANT UPDATE, INSERT, SELECT ON dbo.DetallesFacturas TO Administrador;

-- GerenteGeneral
grant control on database::tiendaElectronica to GerenteGeneral;

-- GerenteAlmacen
GRANT UPDATE, INSERT, SELECT ON dbo.Productos TO GerenteAlmacen;
GRANT UPDATE, INSERT, SELECT ON dbo.categoriasProductos TO GerenteAlmacen;
GRANT UPDATE, INSERT, SELECT ON dbo.DetallesStok TO GerenteAlmacen;
GRANT UPDATE, INSERT, SELECT ON dbo.Proveedores TO GerenteAlmacen;
GRANT UPDATE, INSERT, SELECT ON dbo.Pedidos TO GerenteAlmacen;
GRANT UPDATE, INSERT, SELECT ON dbo.Compras TO GerenteAlmacen;

-- EmpleadoVentas
GRANT SELECT ON dbo.Departamentos TO EmpleadoVentas;
GRANT SELECT ON dbo.Municipios TO EmpleadoVentas;
GRANT SELECT ON dbo.Distritos TO EmpleadoVentas;
GRANT UPDATE, INSERT, SELECT ON dbo.Direcciones TO EmpleadoVentas;
GRANT UPDATE, INSERT, SELECT ON dbo.Clientes TO EmpleadoVentas;
GRANT INSERT ON dbo.Productos TO EmpleadoVentas;
GRANT INSERT ON dbo.Facturas TO EmpleadoVentas;
GRANT INSERT ON dbo.DetallesFacturas TO EmpleadoVentas;

-- EmpleadoAlmacen
GRANT SELECT ON dbo.Proveedores TO EmpleadoAlmacen;
GRANT SELECT ON dbo.Pedidos TO EmpleadoAlmacen;
GRANT SELECT ON dbo.Compras TO EmpleadoAlmacen;
GRANT UPDATE, INSERT, SELECT ON dbo.Productos TO EmpleadoAlmacen;
GRANT UPDATE, INSERT, SELECT ON dbo.categoriasProductos TO EmpleadoAlmacen;
GRANT UPDATE, INSERT, SELECT ON dbo.DetallesStok TO EmpleadoAlmacen;

-- EmpleadoRRHH
GRANT SELECT ON dbo.Departamentos TO RRHH;
GRANT SELECT ON dbo.Municipios TO RRHH;
GRANT SELECT ON dbo.Distritos TO RRHH;
GRANT SELECT, UPDATE, INSERT ON dbo.Direcciones TO RRHH;
GRANT SELECT ON dbo.Empleados TO RRHH;
GRANT UPDATE, INSERT ON dbo.Cargos TO RRHH;
GRANT UPDATE, INSERT ON dbo.Empleados TO RRHH;

-- CONSULTAS
go
-- Consulta para obtener una lista de logins en la instancia de SQL Server
select name from sys.server_principals where type_desc = 'SQL_LOGIN';
go
-- Consulta para obtener una lista de usuarios en la instancia de SQL Server
select name from sys.database_principals where type_desc = 'SQL_USER';
go
-- Consulta para obtener una lista de roles en la instancia de SQL Server
select name from sys.database_principals where type_desc = 'DATABASE_ROLE';

