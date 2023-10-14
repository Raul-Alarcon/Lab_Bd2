-- use tiendaElectronica
Create FUNCTION dbo.fnGetNumClientesByApellidos (@apellido VARCHAR(50))
RETURNS INT
AS
BEGIN

DECLARE @numClientes INT = (
    SELECT COUNT(*)
    FROM dbo.Clientes
    WHERE ApellidosCliente = @apellido
);

RETURN @numClientes;

END;
-- ejecucion
SELECT dbo.fnGetNumClientesByApellidos('Pérez González') Numero_de_clientes_con_el_mismo_apellido;
select * from Clientes;