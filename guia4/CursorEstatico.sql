-- cursor estatico
-- tienda electronica
/*	Hilder Alpe
	Raúl Alarcon*/

-- use tiendaElectronica;

-- Cursor Estatico-----------------------------------------------
declare @idEmpleado varchar(10)
declare @nombresEmpleado varchar(60)
declare @apellidosEmpleado varchar(60)
declare @cargo varchar(60)

-- Modificar la declaración select para incluir los campos adicionales
declare CursorEstatico cursor static for
select CAST(e.idEmpleado AS varchar(10)) as idEmpleado, e.nombresEmpleado, e.apellidosEmpleado, c.cargo
from Empleados as e
inner join Cargos as c on e.idCargo = c.IdCargo;

open CursorEstatico
-- Recorrido hacia adelante
-- Obtener el primer registro
fetch first from CursorEstatico into @idEmpleado, @nombresEmpleado, @apellidosEmpleado, @cargo
print 'IdEmpleado - Empleado - Cargo'

while @@FETCH_STATUS = 0
begin
    print @idEmpleado + ' - ' + @nombresEmpleado + ' ' + @apellidosEmpleado + ' - ' + @cargo

	-- Obtener el siguiente registro hacia adelante
	fetch next from CursorEstatico into @idEmpleado, @nombresEmpleado, @apellidosEmpleado, @cargo
end

-- Recorrido hacia atras
-- Obtener el ultimo registro
fetch last from CursorEstatico into @idEmpleado, @nombresEmpleado, @apellidosEmpleado, @cargo
print 'IdEmpleado - Empleado - Cargo'

while @@FETCH_STATUS = 0
begin
    print @idEmpleado + ' - ' + @nombresEmpleado + ' ' + @apellidosEmpleado + ' - ' + @cargo

    -- Obtener el registro anterior hacia atrás
    fetch prior from CursorEstatico into @idEmpleado, @nombresEmpleado, @apellidosEmpleado, @cargo
end

close CursorEstatico
deallocate CursorEstatico
