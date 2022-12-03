--	*****************************************************************************
--	* DATABASE																	*
--	*****************************************************************************
DROP DATABASE IF EXISTS laravel_Api_REST_Control_Gasto;
CREATE DATABASE IF NOT EXISTS laravel_Api_REST_Control_Gasto;
USE laravel_Api_REST_Control_Gasto;
--	*****************************************************************************
--	* CLASIFICACION																*
--	*****************************************************************************
DROP TABLE IF EXISTS Clasificacion;
CREATE TABLE IF NOT EXISTS Clasificacion
(
	id			INT				NOT	NULL	AUTO_INCREMENT	COMMENT	'',
	nombre		VARCHAR(45)		NOT	NULL					COMMENT	'',
	descripcion	VARCHAR(512)		NULL	DEFAULT	NULL	COMMENT	'',
	icono		VARCHAR(65)			NULL	DEFAULT	NULL	COMMENT	'',
	creado		TIMESTAMP		NOT	NULL	DEFAULT	NOW()	COMMENT	'',
	editado		TIMESTAMP			NULL	DEFAULT	NULL	COMMENT	'',
	eliminado	TIMESTAMP			NULL	DEFAULT	NULL	COMMENT	'',
	CONSTRAINT pk_clasificacion			PRIMARY KEY(id),
	CONSTRAINT uk_id_clasificacion		UNIQUE(id),
	CONSTRAINT uk_nombre_clasificacion	UNIQUE(nombre)
) ENGINE=INNODB CHARSET=utf8mb4;

INSERT INTO Clasificacion(nombre, descripcion, icono, creado)
VALUES
	('(Ninguno)'				,	NULL,	NULL,	NOW()),
	('Vivienda'					,	NULL,	NULL,	NOW()),
	('Comida'					,	NULL,	NULL,	NOW()),
	('Impuestos y donaciones'	,	NULL,	NULL,	NOW()),
	('Transporte'				,	NULL,	NULL,	NOW()),
	('Seguros'					,	NULL,	NULL,	NOW()),
	('Ahorros e Inversiones'	,	NULL,	NULL,	NOW()),
	('Servicios'				,	NULL,	NULL,	NOW()),
	('Salud'					,	NULL,	NULL,	NOW()),
	('Vestimenta'				,	NULL,	NULL,	NOW()),
	('Recreación'				,	NULL,	NULL,	NOW()),
	('Personal'					,	NULL,	NULL,	NOW()),
	('Deudas'					,	NULL,	NULL,	NOW());

--	*****************************************************************************
--	* SUBCLASIFICACION															*
--	*****************************************************************************
DROP TABLE IF EXISTS Subclasificacion;
CREATE TABLE IF NOT EXISTS Subclasificacion
(
	id					INT				NOT	NULL	AUTO_INCREMENT	COMMENT	'',
	clasificacion_id	INT				NOT	NULL	DEFAULT	1		COMMENT	'',
	nombre				VARCHAR(45)		NOT	NULL					COMMENT	'',
	descripcion			VARCHAR(512)		NULL	DEFAULT	NULL	COMMENT	'',
	icono				VARCHAR(65)			NULL	DEFAULT	NULL	COMMENT	'',
	creado				TIMESTAMP		NOT	NULL	DEFAULT	NOW()	COMMENT	'',
	editado				TIMESTAMP			NULL	DEFAULT	NULL	COMMENT	'',
	eliminado			TIMESTAMP			NULL	DEFAULT	NULL	COMMENT	'',
	CONSTRAINT pk_subclasificacion			PRIMARY KEY(id),
	CONSTRAINT fk_clasificacion				FOREIGN KEY(clasificacion_id)
		REFERENCES Clasificacion(id),
	CONSTRAINT uk_id_subclasificacion		UNIQUE(id),
	CONSTRAINT uk_nombre_subclasificacion	UNIQUE(nombre)
) ENGINE=INNODB CHARSET=utf8mb4;


INSERT INTO Subclasificacion(clasificacion_id, nombre, descripcion, icono, creado)
VALUES
	(001,"(Ninguno)"						,	NULL,	NULL,	NOW()),

	(002,"Hipoteca Uno/Renta"				,	NULL,	NULL,	NOW()),
	(002,"Hipoteca Dos"						,	NULL,	NULL,	NOW()),
	(002,"Impuestos de vivienda"			,	NULL,	NULL,	NOW()),
	(002,"Reparaciones/Mantenimiento"		,	NULL,	NULL,	NOW()),
	(002,"Gastos de administración"			,	NULL,	NULL,	NOW()),

	(003,"Despensa"							,	NULL,	NULL,	NOW()),
	(003,"Restaurantes"						,	NULL,	NULL,	NOW()),

	(004,"Impuestos"						,	NULL,	NULL,	NOW()),
	(004,"Donaciones"						,	NULL,	NULL,	NOW()),

	(005,"Gasolina & Aceite"				,	NULL,	NULL,	NOW()),
	(005,"Reparación & Llantas"				,	NULL,	NULL,	NOW()),
	(005,"Licencia & Impuestos"				,	NULL,	NULL,	NOW()),
	(005,"Reemplazo de Auto"				,	NULL,	NULL,	NOW()),
	(005,"Transporte público"				,	NULL,	NULL,	NOW()),

	(006,"Seguro de vida"					,	NULL,	NULL,	NOW()),
	(006,"Seguro de gastos médicos"			,	NULL,	NULL,	NOW()),
	(006,"Seguro de vivienda"				,	NULL,	NULL,	NOW()),
	(006,"Seguro de auto"					,	NULL,	NULL,	NOW()),
	(006,"Seguro de incapacidad"			,	NULL,	NULL,	NOW()),
	(006,"Seguro contra robo"				,	NULL,	NULL,	NOW()),
	(006,"Ciudados a largo plazo"			,	NULL,	NULL,	NOW()),

	(007,"Fondo de emergencias"				,	NULL,	NULL,	NOW()),
	(007,"Fondo para el retiro"				,	NULL,	NULL,	NOW()),
	(007,"Fondo para estudios"				,	NULL,	NULL,	NOW()),

	(008,"Electricidad"						,	NULL,	NULL,	NOW()),
	(008,"Gas"								,	NULL,	NULL,	NOW()),
	(008,"Agua"								,	NULL,	NULL,	NOW()),
	(008,"Servicios de limpieza"			,	NULL,	NULL,	NOW()),
	(008,"Teléfono"							,	NULL,	NULL,	NOW()),
	(008,"Internet"							,	NULL,	NULL,	NOW()),
	(008,"Cable"							,	NULL,	NULL,	NOW()),

	(009,"Medicamentos"						,	NULL,	NULL,	NOW()),
	(009,"Médicos"							,	NULL,	NULL,	NOW()),
	(009,"Dentista"							,	NULL,	NULL,	NOW()),
	(009,"Optometrista"						,	NULL,	NULL,	NOW()),
	(009,"Vitaminas"						,	NULL,	NULL,	NOW()),
	(009,"Salud otros 1"					,	NULL,	NULL,	NOW()),
	(009,"Salud otros 2"					,	NULL,	NULL,	NOW()),

	(010,"Adultos"							,	NULL,	NULL,	NOW()),
	(010,"Niños"							,	NULL,	NULL,	NOW()),
	(010,"Limpieza"							,	NULL,	NULL,	NOW()),

	(011,"Entretenimiento"					,	NULL,	NULL,	NOW()),
	(011,"Vacaciones"						,	NULL,	NULL,	NOW()),

	(012,"Guardería/Niñera"					,	NULL,	NULL,	NOW()),
	(012,"Artículos de tocador"				,	NULL,	NULL,	NOW()),
	(012,"Cosméticos/Ciudado del cabello"	,	NULL,	NULL,	NOW()),
	(012,"Educación/Colegiatura"			,	NULL,	NULL,	NOW()),
	(012,"Libros/Útiles"					,	NULL,	NULL,	NOW()),
	(012,"Manutención"						,	NULL,	NULL,	NOW()),
	(012,"Pensión alimenticia"				,	NULL,	NULL,	NOW()),
	(012,"Suscripciones"					,	NULL,	NULL,	NOW()),
	(012,"Gastos de organización"			,	NULL,	NULL,	NOW()),
	(012,"Regalos"							,	NULL,	NULL,	NOW()),
	(012,"Reemplazar muebles"				,	NULL,	NULL,	NOW()),
	(012,"Dinero de bolsillo (de el)"		,	NULL,	NULL,	NOW()),
	(012,"Dinero de bolsillo (de ella)"		,	NULL,	NULL,	NOW()),
	(012,"Artículos para bebé"				,	NULL,	NULL,	NOW()),
	(012,"Artículos para mascota"			,	NULL,	NULL,	NOW()),
	(012,"Música/Tecnología"				,	NULL,	NULL,	NOW()),
	(012,"Varios"							,	NULL,	NULL,	NOW()),
	(012,"Contador"							,	NULL,	NULL,	NOW()),
	(012,"Personal otro 1"					,	NULL,	NULL,	NOW()),
	(012,"Personal otro 2"					,	NULL,	NULL,	NOW()),

	(013,"Pago de auto 1"					,	NULL,	NULL,	NOW()),
	(013,"Pago de auto 2"					,	NULL,	NULL,	NOW()),
	(013,"Tarjeta de crédito 1"				,	NULL,	NULL,	NOW()),
	(013,"Tarjeta de crédito 2"				,	NULL,	NULL,	NOW()),
	(013,"Tarjeta de crédito 3"				,	NULL,	NULL,	NOW()),
	(013,"Tarjeta de crédito 4"				,	NULL,	NULL,	NOW()),
	(013,"Tarjeta de crédito 5"				,	NULL,	NULL,	NOW()),
	(013,"Préstamo estudiantil 1"			,	NULL,	NULL,	NOW()),
	(013,"Préstamo estudiantil 2"			,	NULL,	NULL,	NOW()),
	(013,"Préstamo estudiantil 3"			,	NULL,	NULL,	NOW()),
	(013,"Préstamo estudiantil 4"			,	NULL,	NULL,	NOW()),
	(013,"Deuda otro 1"						,	NULL,	NULL,	NOW()),
	(013,"Deuda otro 2"						,	NULL,	NULL,	NOW()),
	(013,"Deuda otro 3"						,	NULL,	NULL,	NOW()),
	(013,"Deuda otro 4"						,	NULL,	NULL,	NOW()),
	(013,"Deuda otro 5"						,	NULL,	NULL,	NOW());


--	*****************************************************************************
--	* OPERACION																	*
--	*****************************************************************************
DROP TABLE IF EXISTS Operacion;
CREATE TABLE IF NOT EXISTS Operacion
(
	id					INT				NOT	NULL	AUTO_INCREMENT		COMMENT	'',
	subclasificacion_id	INT 			NOT	NULL	DEFAULT	0 			COMMENT	'',
	tipo				ENUM('ingreso'
							,'egreso')	NOT	NULL	DEFAULT	'egreso'	COMMENT	'',
	importe				FLOAT			NOT	NULL	DEFAULT	0			COMMENT	'',
	descripcion			VARCHAR(512)		NULL	DEFAULT	NULL		COMMENT	'',
	creado				TIMESTAMP		NOT	NULL	DEFAULT	NOW()		COMMENT	'',
	editado				TIMESTAMP			NULL	DEFAULT	NULL		COMMENT	'',
	eliminado			TIMESTAMP			NULL	DEFAULT	NULL		COMMENT	'',

	CONSTRAINT pk_operacion					PRIMARY KEY(id),
	CONSTRAINT fk_subclasificacion			FOREIGN KEY(subclasificacion_id)
		REFERENCES Subclasificacion(id),
	CONSTRAINT uk_id_operacion				UNIQUE(id)
) ENGINE=INNODB CHARSET=utf8mb4;

--	*****************************************************************************
