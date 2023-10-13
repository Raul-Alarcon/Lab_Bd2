-- use tiendaElectronica;

-- DIRECCIONES
-- Departamentos
insert into Departamentos values
--	ID_Departamento, Departamento, Pais 
	('AH', 'Ahuachapán', 'El Salvador'),
	('CA', 'Cabañas', 'El Salvador'),
	('CH', 'Chalatenango', 'El Salvador'),
	('CU', 'Cuscatlán', 'El Salvador'),
	('LL', 'La Libertad', 'El Salvador'),
	('LP', 'La Paz', 'El Salvador'),
	('LU', 'La Unión', 'El Salvador'),
	('MO', 'Morazán', 'El Salvador'),
	('SA', 'Santa Ana', 'El Salvador'),
	('SM', 'San Miguel', 'El Salvador'),
	('SS', 'San Salvador', 'El Salvador'),
	('SV', 'San Vicente', 'El Salvador'),
	('SO', 'Sonsonate', 'El Salvador'),
	('US', 'Usulután', 'El Salvador');
go
select * from Departamentos;

go
-- Municipios
insert into Municipios values
--	ID_Municipio, Municipio, ID_Departamento
	('AHN', 'Ahuachapán Norte', 'AH'),
	('AHC', 'Ahuachapán Centro', 'AH'),
	('AHS', 'Ahuachapán Sur', 'AH'),
	('CAE', 'Cabañas Este', 'CA'),
	('CAO', 'Cabañas Oeste', 'CA'),
	('CHN', 'Chalatenango Norte', 'CH'),
	('CHC', 'Chalatenango Centro', 'CH'),
	('CHS', 'Chalatenango Sur', 'CH'),
	('CUN', 'Cuscatlán Norte', 'CU'),
	('CUS', 'Cuscatlán Sur', 'CU'),
	('LLN', 'La Libertad Norte', 'LL'),
	('LLC', 'La Libertad Centro', 'LL'),
	('LLO', 'La Libertad Oeste', 'LL'),
	('LLE', 'La Libertad Este', 'LL'),
	('LLS', 'La Libertad Sur', 'LL'),
	('LLT', 'La Libertad Costa', 'LL'),
	('LPO', 'La Paz Oeste', 'LP'),
	('LPC', 'La Paz Centro', 'LP'),
	('LPE', 'La Paz Este', 'LP'),
	('LUN', 'La Unión Norte', 'LU'),
	('LUS', 'La Unión Sur', 'LU'),
	('MON', 'Morazán Norte', 'MO'),
	('MOS', 'Morazán Sur', 'MO'),
	('SAN', 'Santa Ana Norte', 'SA'),
	('SAC', 'Santa Ana Centro', 'SA'),
	('SAE', 'Santa Ana Este', 'SA'),
	('SAO', 'Santa Ana Oeste', 'SA'),
	('SMN', 'San Miguel Norte', 'SM'),
	('SMC', 'San Miguel Centro', 'SM'),
	('SMO', 'San Miguel Oeste', 'SM'),
	('SSN', 'San Salvador Norte', 'SS'),
	('SSO', 'San Salvador Oeste', 'SS'),
	('SSE', 'San Salvador Este', 'SS'),
	('SSC', 'San Salvador Centro', 'SS'),
	('SSS', 'San Salvador Sur', 'SS'),
	('SVN', 'San Vicente Norte', 'SV'),
	('SVS', 'San Vicente Sur', 'SV'),
	('SON', 'Sonsonate Norte', 'SO'),
	('SOC', 'Sonsonate Centro', 'SO'),
	('SOE', 'Sonsonate Este', 'SO'),
	('SOO', 'Sonsonate Oeste', 'SO'),
	('USN', 'Usulután Norte', 'US'),
	('USE', 'Usulután Este', 'US'),
	('USO', 'Usulután Oeste', 'US');
go
select * from Municipios;

go
-- Distritos
insert into Distritos values
-- ID_Distrito, Distrito, ID_Municipio
-- Ahuachapan
	('AHN01', 'Atiquizaya', 'AHN'),
	('AHN02', 'El Refugio', 'AHN'),
	('AHN03', 'San Lorenzo', 'AHN'),
	('AHN04', 'Turín', 'AHN'),
	('AHC01', 'Ahuachapán', 'AHC'),
	('AHC02', 'Apaneca', 'AHC'),
	('AHC03', 'Concepción de Ataco', 'AHC'),
	('AHC04', 'Tacuba', 'AHC'),
	('AHS01', 'Guaymango', 'AHS'),
	('AHS02', 'Jujutla', 'AHS'),
	('AHS03', 'San Francisco Menéndez', 'AHS'),
	('AHS04', 'San Pedro Puxtla', 'AHS'),
-- Cabañas
	('CAE01', 'Sensuntepeque', 'CAE'),
	('CAE02', 'Victoria', 'CAE'),
	('CAE03', 'Dolores', 'CAE'),
	('CAE04', 'Guacotecti', 'CAE'),
	('CAE05', 'San Isidro', 'CAE'),
	('CAO01', 'Ilobasco', 'CAO'),
	('CAO02', 'Tejutepeque', 'CAO'),
	('CAO03', 'Jutiapa', 'CAO'),
	('CAO04', 'Cinquera', 'CAO'),
-- Chalatenango
	('CHN01', 'La Palma', 'CHN'),
	('CHN02', 'Citalá', 'CHN'),
	('CHN03', 'San Ignacio', 'CHN'),
	('CHC01', 'Nueva Concepción', 'CHC'),
	('CHC02', 'Tejutla', 'CHC'),
	('CHC03', 'La Reina', 'CHC'),
	('CHC04', 'Agua Caliente', 'CHC'),
	('CHC05', 'Dulce Nombre de María', 'CHC'),
	('CHC06', 'El Paraíso', 'CHC'),
	('CHC07', 'San Fernando', 'CHC'),
	('CHC08', 'San Francisco Morazán', 'CHC'),
	('CHC09', 'San Rafael', 'CHC'),
	('CHC10', 'Santa Rita', 'CHC'),
	('CHS01', 'Chalatenango', 'CHS'),
	('CHS02', 'Arcatao', 'CHS'),
	('CHS03', 'Azacualpa', 'CHS'),
	('CHS04', 'Comalapa', 'CHS'),
	('CHS05', 'Concepción Quezaltepeque', 'CHS'),
	('CHS06', 'El Carrizal', 'CHS'),
	('CHS07', 'La Laguna', 'CHS'),
	('CHS08', 'Las Vueltas', 'CHS'),
	('CHS09', 'Nombre de Jesús', 'CHS'),
	('CHS10', 'Nueva Trinidad', 'CHS'),
	('CHS11', 'Ojos de Agua', 'CHS'),
	('CHS12', 'Potonico', 'CHS'),
	('CHS13', 'San Antonio de La Cruz', 'CHS'),
	('CHS14', 'San Antonio Los Ranchos', 'CHS'),
	('CHS15', 'San Francisco Lempa', 'CHS'),
	('CHS16', 'San Isidro Labrador', 'CHS'),
	('CHS17', 'San José Cancasque', 'CHS'),
	('CHS18', 'San Miguel de Mercedes', 'CHS'),
	('CHS19', 'San José Las Flores', 'CHS'),
	('CHS20', 'San Luis del Carmen', 'CHS'),
-- Cuscatlán
	('CUN01', 'Suchitoto', 'CUN'),
	('CUN02', 'San José Guayabal', 'CUN'),
	('CUN03', 'Oratorio de Concepción', 'CUN'),
	('CUN04', 'San Bartolomé Perulapía', 'CUN'),
	('CUN05', 'San Pedro Perulapán', 'CUN'),
	('CUS01', 'Cojutepeque', 'CUS'),
	('CUS02', 'San Rafael Cedros', 'CUS'),
	('CUS03', 'Candelaria', 'CUS'),
	('CUS04', 'Monte San Juan', 'CUS'),
	('CUS05', 'El Carmen', 'CUS'),
	('CUS06', 'San Cristobal', 'CUS'),
	('CUS07', 'Santa Cruz Michapa', 'CUS'),
	('CUS08', 'San Ramón', 'CUS'),
	('CUS09', 'El Rosario', 'CUS'),
	('CUS10', 'Santa Cruz Analquito', 'CUS'),
	('CUS11', 'Tenancingo', 'CUS'),
-- La Libertad
	('LLN01', 'Quezaltepeque', 'LLN'),
	('LLN02', 'San Matías', 'LLN'),
	('LLN03', 'San Pablo Tacachico', 'LLN'),
	('LLC01', 'San Juan Opico', 'LLC'),
	('LLC02', 'Ciudad Arce', 'LLC'),
	('LLO01', 'Colón', 'LLO'),
	('LLO02', 'Jayaque', 'LLO'),
	('LLO03', 'Sacacoyo', 'LLO'),
	('LLO04', 'Tepecoyo', 'LLO'),
	('LLO05', 'Talnique', 'LLO'),
	('LLE01', 'Antiguo Cuscatlán', 'LLE'),
	('LLE02', 'Huizúcar', 'LLE'),
	('LLE03', 'Nuevo Cuscatlán', 'LLE'),
	('LLE04', 'San José Villanueva', 'LLE'),
	('LLE05', 'Zaragoza', 'LLE'),
	('LLS01', 'Comasagua', 'LLS'),
	('LLS02', 'Santa Tecla', 'LLS'),
	('LLT01', 'Chiltiupán', 'LLT'),
	('LLT02', 'Jicalapa', 'LLT'),
	('LLT03', 'La Libertad', 'LLT'),
	('LLT04', 'Tamanique', 'LLT'),
	('LLT05', 'Teotepeque', 'LLT'),
-- La Paz
	('LPO01', 'Cuyultitan', 'LPO'),
	('LPO02', 'Olocuilta', 'LPO'),
	('LPO03', 'San Juan Talpa', 'LPO'),
	('LPO04', 'San Luis Talpa', 'LPO'),
	('LPO05', 'San Pedro Masahuat', 'LPO'),
	('LPO06', 'Tapalhuaca', 'LPO'),
	('LPO07', 'San Francisco Chinameca', 'LPO'),
	('LPC01', 'El Rosario', 'LPC'),
	('LPC02', 'Jerusalén', 'LPC'),
	('LPC03', 'Mercedes La Ceiba', 'LPC'),
	('LPC04', 'Paraíso de Osorio', 'LPC'),
	('LPC05', 'San Antonio Masahuat', 'LPC'),
	('LPC06', 'San Emigdio', 'LPC'),
	('LPC07', 'San Juan Tepezontes', 'LPC'),
	('LPC08', 'San Luís La Herradura', 'LPC'),
	('LPC09', 'San Miguel Tepezontes', 'LPC'),
	('LPC10', 'San Pedro Nonualco', 'LPC'),
	('LPC11', 'Santa María Ostuma', 'LPC'),
	('LPC12', 'Santiago Nonualco', 'LPC'),
	('LPE01', 'San Juan Nonualco', 'LPE'),
	('LPE02', 'San Rafael Obrajuelo', 'LPE'),
	('LPE03', 'Zacatecoluca', 'LPE'),
-- La Unión
	('LUN01', 'Anamorós', 'LUN'),
	('LUN02', 'Bolivar', 'LUN'),
	('LUN03', 'Concepción de Oriente', 'LUN'),
	('LUN04', 'El Sauce', 'LUN'),
	('LUN05', 'Lislique', 'LUN'),
	('LUN06', 'Nueva Esparta', 'LUN'),
	('LUN07', 'Pasaquina', 'LUN'),
	('LUN08', 'Polorós', 'LUN'),
	('LUN09', 'San José La Fuente', 'LUN'),
	('LUN10', 'Santa Rosa de Lima', 'LUN'),
	('LUS01', 'Conchagua', 'LUS'),
	('LUS02', 'El Carmen', 'LUS'),
	('LUS03', 'Intipucá', 'LUS'),
	('LUS04', 'La Unión', 'LUS'),
	('LUS05', 'Meanguera del Golfo', 'LUS'),
	('LUS06', 'San Alejo', 'LUS'),
	('LUS07', 'Yayantique', 'LUS'),
	('LUS08', 'Yucuaiquín', 'LUS'),
-- Morazán
	('MON01', 'Arambala', 'MON'),
	('MON02', 'Cacaopera', 'MON'),
	('MON03', 'Corinto', 'MON'),
	('MON04', 'El Rosario', 'MON'),
	('MON05', 'Joateca', 'MON'),
	('MON06', 'Jocoaitique', 'MON'),
	('MON07', 'Meanguera', 'MON'),
	('MON08', 'Perquín', 'MON'),
	('MON09', 'San Fernando', 'MON'),
	('MON10', 'San Isidro', 'MON'),
	('MON11', 'Torola', 'MON'),
	('MOS01', 'Chilanga', 'MOS'),
	('MOS02', 'Delicias de Concepción', 'MOS'),
	('MOS03', 'El Divisadero', 'MOS'),
	('MOS04', 'Gualococti', 'MOS'),
	('MOS05', 'Guatajiagua', 'MOS'),
	('MOS06', 'Jocoro', 'MOS'),
	('MOS07', 'Lolotiquillo', 'MOS'),
	('MOS08', 'Osicala', 'MOS'),
	('MOS09', 'San Carlos', 'MOS'),
	('MOS10', 'San Francisco Gotera', 'MOS'),
	('MOS11', 'San Simón', 'MOS'),
	('MOS12', 'Sensembra', 'MOS'),
	('MOS13', 'Sociedad', 'MOS'),
	('MOS14', 'Yamabal', 'MOS'),
	('MOS15', 'Yoloaiquín', 'MOS'),
-- Santa Ana
	('SAN01', 'Masahuat', 'SAN'),
	('SAN02', 'Metapán', 'SAN'),
	('SAN03', 'Santa Rosa Guachipilín', 'SAN'),
	('SAN04', 'Texistepeque', 'SAN'),
	('SAC01', 'Santa Ana', 'SAC'),
	('SAE01', 'Coatepeque', 'SAE'),
	('SAE02', 'El Congo', 'SAE'),
	('SAO01', 'Candelaria de la Frontera', 'SAO'),
	('SAO02', 'Chalchuapa', 'SAO'),
	('SAO03', 'El Porvenir', 'SAO'),
	('SAO04', 'San Antonio Pajonal', 'SAO'),
	('SAO05', 'San Sebastián Salitrillo', 'SAO'),
	('SAO06', 'Santiago de La Frontera', 'SAO'),
-- San Miguel
	('SMN01', 'Ciudad Barrios', 'SMN'),
	('SMN02', 'Sesori', 'SMN'),
	('SMN03', 'Nuevo Edén de San Juan', 'SMN'),
	('SMN04', 'San Gerardo', 'SMN'),
	('SMN05', 'San Luis de La Reina', 'SMN'),
	('SMN06', 'Carolina', 'SMN'),
	('SMN07', 'San Antonio del Mosco', 'SMN'),
	('SMN08', 'Chapeltique', 'SMN'),
	('SMC01', 'San Miguel', 'SMC'),
	('SMC02', 'Comacarán', 'SMC'),
	('SMC03', 'Uluazapa', 'SMC'),
	('SMC04', 'Moncagua', 'SMC'),
	('SMC05', 'Quelepa', 'SMC'),
	('SMC06', 'Chirilagua', 'SMC'),
	('SMO01', 'Chinameca', 'SMO'),
	('SMO02', 'Nueva Guadalupe', 'SMO'),
	('SMO03', 'Lolotique', 'SMO'),
	('SMO04', 'San Jorge', 'SMO'),
	('SMO05', 'San Rafael Oriente', 'SMO'),
	('SMO06', 'El Tránsito', 'SMO'),
-- San Salvador
	('SSN01', 'Aguilares', 'SSN'),
	('SSN02', 'El Paisnal', 'SSN'),
	('SSN03', 'Guazapa', 'SSN'),
	('SSO01', 'Apopa', 'SSO'),
	('SSO02', 'Nejapa', 'SSO'),
	('SSE01', 'Ilopango', 'SSE'),
	('SSE02', 'San Martín', 'SSE'),
	('SSE03', 'Soyapango', 'SSE'),
	('SSE04', 'Tonacatepeque', 'SSE'),
	('SSC01', 'Ayutuxtepeque', 'SSC'),
	('SSC02', 'Mejicanos', 'SSC'),
	('SSC03', 'San Salvador', 'SSC'),
	('SSC04', 'Cuscatancingo', 'SSC'),
	('SSC05', 'Ciudad Delgado', 'SSC'),
	('SSS01', 'Panchimalco', 'SSS'),
	('SSS02', 'Rosario de Mora', 'SSS'),
	('SSS03', 'San Marcos', 'SSS'),
	('SSS04', 'Santo Tomás', 'SSS'),
	('SSS05', 'Santiago Texacuangos', 'SSS'),
-- San Vicente
	('SVN01', 'Apastepeque', 'SVN'),
	('SVN02', 'Santa Clara', 'SVN'),
	('SVN03', 'San Ildefonso', 'SVN'),
	('SVN04', 'San Esteban Catarina', 'SVN'),
	('SVN05', 'San Sebastián', 'SVN'),
	('SVN06', 'San Lorenzo', 'SVN'),
	('SVN07', 'Santo Domingo', 'SVN'),
	('SVS01', 'San Vicente', 'SVS'),
	('SVS02', 'Guadalupe', 'SVS'),
	('SVS03', 'Verapaz', 'SVS'),
	('SVS04', 'Tepetitán', 'SVS'),
	('SVS05', 'Tecoluca', 'SVS'),
	('SVS06', 'San Cayetano Istepeque', 'SVS'),
-- Sonsonate
	('SON01', 'Juayúa', 'SON'),
	('SON02', 'Nahuizalco', 'SON'),
	('SON03', 'Salcoatitán', 'SON'),
	('SON04', 'Santa Catarina Masahuat', 'SON'),
	('SOC01', 'Sonsonate', 'SOC'),
	('SOC02', 'Sonzacate', 'SOC'),
	('SOC03', 'Nahulingo', 'SOC'),
	('SOC04', 'San Antonio del Monte', 'SOC'),
	('SOC05', 'Santo Domingo de Guzmán', 'SOC'),
	('SOE01', 'Izalco', 'SOE'),
	('SOE02', 'Armenia', 'SOE'),
	('SOE03', 'Caluco', 'SOE'),
	('SOE04', 'San Julián', 'SOE'),
	('SOE05', 'Cuisnahuat', 'SOE'),
	('SOE06', 'Santa Isabel Ishuatán', 'SOE'),
	('SOO01', 'Acajutla', 'SOO'),
-- Usulután
	('USN01', 'Santiago de María', 'USN'),
	('USN02', 'Alegría', 'USN'),
	('USN03', 'Berlín', 'USN'),
	('USN04', 'Mercedes Umaña', 'USN'),
	('USN05', 'Jucuapa', 'USN'),
	('USN06', 'El triunfo', 'USN'),
	('USN07', 'Estanzuelas', 'USN'),
	('USN08', 'San Buenaventura', 'USN'),
	('USN09', 'Nueva Granada', 'USN'),
	('USE01', 'Usulután', 'USE'),
	('USE02', 'Jucuarán', 'USE'),
	('USE03', 'San Dionisio', 'USE'),
	('USE04', 'Concepción Batres', 'USE'),
	('USE05', 'Santa María', 'USE'),
	('USE06', 'Ozatlán', 'USE'),
	('USE07', 'Tecapán', 'USE'),
	('USE08', 'Santa Elena', 'USE'),
	('USE09', 'California', 'USE'),
	('USE10', 'Ereguayquín', 'USE'),
	('USO01', 'Jiquilisco', 'USO'),
	('USO02', 'Puerto El Triunfo', 'USO'),
	('USO03', 'San Agustín', 'USO'),
	('USO04', 'San Francisco Javier', 'USO');
go
select * from Distritos;
go
-- Direcciones 
insert into Direcciones values
-- Linea1, Linea2, ID_Distrito, CodigoPostal
	('Col Madera, Calle 1, #1N', 'Frente al parque', 'SON02', '02311'),  -- 1					
	('Barrio El Caldero, Av 2, #2I', 'Frente al amate', 'SOE01', '02306'), -- 2
	('Res El Cangrejo, Av 3, #3A', 'Frente a la playa', 'SOO01', '02302'), -- 3
	('Barrio El Centro, Av 4, #4S', 'Frente a catedral', 'SOC01', '02301'), -- 4
	('Col La Frontera, Calle 5, #5G', 'Km 10', 'AHS03', '02113'), -- 5
	('Res Buenavista, Calle 6, #6A', 'Contiguo a Alcaldia', 'SAC01', '02201'), -- 6
	('Res Altavista, Av 7, #7S', 'Contiguo al ISSS', 'SSC03', '01101'), -- 7
	('Col Las Margaritas, Pje 20, #2-4', 'Junto a ANDA', 'AHS01', '02114'),-- 8
	('Urb Las Magnolias, Pol 21, #2-6', 'Casa de esquina', 'LLO01', '01115'),-- 9
	('Caserio Florencia, 3era Calle, #5', 'Casa rosada', 'SON01', '02305');-- 10
go
select * from Direcciones;
go
-- clientes
INSERT INTO Clientes VALUES
	-- nombresCliente, apellidosCliente, dui, telefono, eMail, idDireccion)
    ('Juan Alberto', 'Pérez González', '223456789-0', '7890-1234', 'juan@email.com', '1'),
    ('Ana María', 'López Martínez', '713436649-1', '8901-2345', 'ana@gmail.com', '2'),
    ('Carlos Andrés', 'Gómez Rodríguez', '731537890-2', '9012-3456', 'carlos@hotmail.com', '3'),
    ('Sofía Isabel', 'Ramírez Sánchez', '745871901-3', '7123-4567', 'sofia@gmail.com', '4'),
    ('Luis Alberto', 'Hernández Castillo', '356781012-4', '6123-4567', 'luis@hotmail.com', '5');
-- EMPLEADOS
-- Cargos
go
insert into Cargos values
-- Cargo
	('SysAdmin'),
	('Gerente General'),
	('Gerente Almacen'),
	('Empleado Ventas'),
	('Empleado Almacen'),
	('RRHH');
go
select * from Cargos;
go
-- Empleados
insert into Empleados values
-- Nombres, Apellidos, FechaNac, DUI_Empleado, ISSS, Telefono, Correo, ID_Cargo, ID_Direccion
	('José Javier', 'Peréz Gonzalez', '01-01-1995', '04223312-5', '106326698', '6532-4526', 'juan@hotmail.com', '1', '1'),
	('Diego Alberto', 'Gonzalez Coto', '02-02-1990', '34221495-9', '363856741', '7895-5698', 'diego@gmail.com', '2', '2'),
	('Raul Edgardo', 'Ramirez Mocto', '03-03-1980', '83210987-3', '341656987', '6598-2548', 'raul@outlook.com', '3', '3'),
	('Juana Maria', 'Peréz de Alpe', '04-04-1985', '05769712-2', '351753258', '7965-2526', 'may@yahoo.com', '4', '4'),
	('Melvin Edgardo', 'Castro Castillo', '05-05-1989', '85210284-0', '954636947', '7598-3543', 'melvin@outlook.com', '5', '6'),
	('Juan Carlos', 'Hernandez Bran', '06-06-1983', '75463711-6', '953743557', '6963-2329', 'juan@yahoo.com', '6', '6');
go
select * from Empleados;
-- manejo roles
go
-- opciones
-- opcion
insert into Opciones values
	('Gestionar Cuentas'), -- 1
	('Gestionar Departamentos'),  -- 2
	('Gestionar Municipios'), -- 3
	('Gestionar Distritos'), -- 4
	('Gestionar Direcciones'), -- 5
	('Gestionar Clientes'),-- 6
	('Gestionar Cargos'),-- 7
	('Gestionar Empleados'), -- 8
	('Gestionar Opciones'), -- 9
	('Gestionar Roles'), -- 10
	('Gestionar AsignacionRolesOpciones'), -- 11
	('Gestionar Usuarios'), -- 12
	('Gestionar Proveedores'), -- 13
	('Gestionar Pedidos'), -- 14
	('Gestionar Compras'), -- 15
	('Gestionar CategoriasProductos'), -- 16
	('Gestionar DetalleStok'), -- 17
	('Gestionar Productos'), -- 18
	('Gestionar Facturas'), -- 19
	('Gestionar DetallesFacturas'); -- 20
go
select * from Opciones;
-- Roles
go
insert into Roles values
-- NombreRol
	('SysAdmin'),  -- 1
	('Gerente General'), -- 2
	('Gerente Almacen'),-- 3
	('Empleado Almacen'),-- 4
	('Empleado Ventas '),-- 5
	('RRHH');-- 6
go
select * from Roles;
go
insert into AsignacionRolesOpciones values
-- ID_Rol, ID_Opcion
	-- SysAdmin: Todos los permisos
	('1', '1'), ('1', '2'), ('1', '3'), ('1', '4'), 
	('1', '5'), ('1', '6'), ('1', '7'), ('1', '8'),
	('1', '9'), ('1', '10'), ('1', '11'), ('1', '12'),
	('1', '13'), ('1', '14'), ('1', '15'), ('1', '16'),
	('1', '17'), ('1', '18'), ('1', '19'), ('1', '20'),
	-- gerente general
	('2', '1'), ('2', '2'), ('2', '3'), ('2', '4'), 
	('2', '5'), ('2', '6'), ('2', '7'), ('2', '8'),
	('2', '9'), ('2', '10'), ('2', '11'), ('2', '12'),
	('2', '13'), ('2', '14'), ('2', '15'), ('2', '16'),
	('2', '17'), ('2', '18'), ('2', '19'), ('2', '20'),
	-- Gerente Almacén
	('3', '5'), -- Direcciones
	('3', '13'), -- Pedidos
	('3', '14'), -- Compras
	('3', '15'), -- Categorías Productos
	('3', '16'), -- DetalleStok
	('3', '17'), -- Productos
	('3', '18'), -- Facturas
	-- Empleado Almacén
	('4', '16'), -- Categorías Productos
	('4', '17'), -- DetalleStok
	('4', '18'), -- Productos
	-- Empleado Ventas
	('5', '5'), -- Direcciones
	('5', '6'), -- Clientes
	('5', '19'), -- Productos
	('5', '20'), -- Facturas
	-- RRHH:
	('6', '5'),  -- Direcciones  
	('6', '7'),  -- Cargos
	('6', '8');  -- Empleados
go

select * from AsignacionRolesOpciones
go
insert into Usuarios values
	-- ID_Empleado, ID_Rol, Usuario, Clave
	-- Administrador
	('1', '1', 'admin_joseperez', 'root'),
	-- GerenteGeneral
	('2', '2', 'gg_diegogonzales', 'Gonzales1234'),
	-- GerenteAlmacen
	('3', '3', 'ga_raulramirez', 'Ramirez1234'),
	-- empleadoAlmacen
	('4', '4', 'a_juanaperez', 'Perez1234'),
	-- empleadoVentas
	('5', '5', 'v_melvincastro', 'Castro1234'),
	-- RRHH
	('6', '6', 'rrhh_juanhernandez', 'Hernandez1234');
go

select * from Usuarios;
go
-- Proveedores
insert into Proveedores values
    ('Juan Alberto', 'Pérez González', '6541-2378', 'juan@outlook.com', 'Tech Solutions', '7'), 
	('Ana María', 'López Martínez', '6897-6543', 'ana@gmail.com', 'InnovaTech', '8'),
	('Carlos Andrés', 'Gómez Rodríguez', '6123-4567', 'carlos@outlook.com', 'ElectroSoluciones', '9'),
	('Sofía Isabel', 'Ramírez Sánchez', '6565-6565', 'sofia@gmail.com', 'Global Electronics', '10');
go

select * from Proveedores;
go
-- Categorías de Productos
insert into CategoriasProductos values
	-- idCategoria, categoria, detalles
    ('Laptops', 'Laptops y computadoras portátiles'),
    ('Smartphones', 'Teléfonos inteligentes y accesorios'),
    ('Electrodomésticos', 'Electrodomésticos para el hogar');
go 
select * from CategoriasProductos;
go
-- Detalles de Stock
insert into DetallesStok values
	-- idStok, cantidadStok, descripcion
    (100, 'Laptops disponibles'),
    (200, 'Smartphones en stock'),
    (50, 'Lavadoras y secadoras'),
    (75, 'Refrigeradoras disponibles'),
    (30, 'Impresoras y escáneres'),
    (20, 'Televisores LED');
go 
select * from DetallesStok;
go
-- Productos
insert into Productos values
	-- idProducto, nombreP, descripcion, precio, idCategoria, idStok 
    ('Dell XPS 13', NULL, 1099.99, 1, 1),
    ('MacBook Air', NULL, 999.99, 1, 1),
    ('iPhone 13 Pro', NULL, 999.99, 2, 2),
    ('Samsung Galaxy S22', NULL, 899.99, 2, 2),
    ('LG Washing Machine', NULL, 599.99, 3, 3),
    ('Sony 65" 4K TV', NULL, 1299.99, 3, 6);
go 
select * from Productos;
go
-- Pedidos
-- Pedidos
INSERT INTO Pedidos VALUES
  ('1', '2023-09-20 09:00:00', '2023-09-25 14:30:00', 'Pedido de suministros regulares'),
  ('2', '2023-09-20 09:30:00', '2023-09-26 10:15:00', 'Pedido urgente de productos electrónicos'),
  ('3', '2023-09-21 10:00:00', '2023-09-27 16:45:00', 'Pedido de material de oficina'),
  ('1', '2023-09-22 08:15:00', '2023-09-29 13:20:00', 'Pedido de dispositivos móviles'),
  ('2', '2023-09-23 09:45:00', '2023-09-30 11:30:00', 'Pedido de computadoras portátiles'),
  ('3', '2023-09-24 11:30:00', '2023-10-01 15:00:00', 'Pedido de routers y switches');
go
select * from Pedidos;
go
-- Compras
INSERT INTO Compras VALUES
  ('1', '1', '50', '399.99', '10.00', 'Compra de 50 smartphones con descuento'),
  ('2', '2', '20', '799.99', '15.00', 'Compra de 20 laptops con descuento'),
  ('3', '3', '200', '49.99', '5.00', 'Compra de 200 routers para suministros regulares'),
  ('1', '4', '100', '399.99', '10.00', 'Compra de 100 smartphones con descuento'),
  ('2', '5', '50', '799.99', '15.00', 'Compra de 50 laptops con descuento'),
  ('3', '6', '500', '49.99', '5.00', 'Compra de 500 routers para suministros regulares');
go
select * from Compras;
go
-- Inserciones de Facturas y DetallesFacturas
INSERT INTO Facturas VALUES
	-- fechaFactura ,comentario, idclient, idempleado 
    ('2023-09-20 09:00:00', NULL, '1', '2'),
    ('2023-09-21 10:00:00', NULL, '2', '2'),
    ('2023-09-22 08:15:00', NULL, '3', '5'),
    ('2023-09-23 09:45:00', NULL, '4', '5'),
    ('2023-09-24 11:30:00', NULL, '5', '5');
go
select * from Facturas;
go
INSERT INTO DetallesFacturas VALUES
-- idProducto, idFactura, cantidad, iva, descuento
    ('1', '1', '10', '25.00', '5.00'),
    ('2', '1', '5', '10.00', '2.00'),
    ('3', '2', '7', '17.50', '3.50'),
    ('4', '2', '3', '7.50', '1.50'),
    ('5', '3', '15', '37.50', '7.50'),
    ('6', '3', '8', '20.00', '4.00'),
    ('1', '4', '12', '30.00', '6.00'),
    ('2', '4', '6', '15.00', '3.00'),
    ('3', '5', '20', '50.00', '10.00'),
    ('4', '5', '10', '25.00', '5.00');
go
select * from DetallesFacturas;
go
