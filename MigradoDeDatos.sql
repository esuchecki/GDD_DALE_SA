-- SCRIPT SQL DEL GRUPO "DALE SA"
-- ==============================
--
-- Nota: Antes de empezar con el script, asegurarse de haber cumplido
-- con lo indicado en el TP de GD (1º Cuatrimestre 2016) - [MERCADO-ENVIO]
-- en la parte de implementacion. (paginas 12 y 13 del enunciado v1.0)
--
--
--
--
--
--
-- ============================== ==============================
--
-- creo el esquema de nuestro grupo y le doy permisos al usuario gd

USE [GD1C2016]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


IF NOT EXISTS (SELECT schema_name 
    FROM information_schema.schemata 
    WHERE schema_name = 'DALE_SA' )
BEGIN
    EXEC ('CREATE SCHEMA [DALE_SA] AUTHORIZATION [gd]')
	PRINT 'ESQUEMA [DALE_SA] CREADO CORRECTAMENTE.'
END
ELSE
	PRINT 'EL ESQUEMA [DALE_SA] YA EXISTIA EN LA BD.'
GO

-- hago que el usuario gd use por default el esquema de nuestro grupo.

USE [GD1C2016]
GO
ALTER USER [gd] WITH DEFAULT_SCHEMA=[DALE_SA]
PRINT 'SE CAMBIO EL ESQUEMA DEL USUARIO [gd] A [DALE_SA].'
GO

-- creo el esquema de nuestro grupo y le doy permisos al usuario gd

USE [GD1C2016]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


IF NOT EXISTS (SELECT schema_name 
    FROM information_schema.schemata 
    WHERE schema_name = 'DALE_SA' )
BEGIN
    EXEC ('CREATE SCHEMA [DALE_SA] AUTHORIZATION [gd]')
	PRINT 'ESQUEMA [DALE_SA] CREADO CORRECTAMENTE.'
END
ELSE
	PRINT 'EL ESQUEMA [DALE_SA] YA EXISTIA EN LA BD.'
GO

--ESTO POR AHORA NO...
/*
-- le doy permisos al usuario gd para que pueda hacer todo dentro del esquema

GRANT UPDATE ON SCHEMA::[DALE_SA] TO [gd] WITH GRANT OPTION 
GO
use [GD1C2016]
GO
GRANT TAKE OWNERSHIP ON SCHEMA::[DALE_SA] TO [gd] WITH GRANT OPTION 
GO
use [GD1C2016]
GO
GRANT CONTROL ON SCHEMA::[DALE_SA] TO [gd] WITH GRANT OPTION 
GO
use [GD1C2016]
GO
GRANT CREATE SEQUENCE ON SCHEMA::[DALE_SA] TO [gd] WITH GRANT OPTION 
GO
use [GD1C2016]
GO
GRANT EXECUTE ON SCHEMA::[DALE_SA] TO [gd] WITH GRANT OPTION 
GO
use [GD1C2016]
GO
GRANT DELETE ON SCHEMA::[DALE_SA] TO [gd] WITH GRANT OPTION 
GO
use [GD1C2016]
GO
GRANT INSERT ON SCHEMA::[DALE_SA] TO [gd] WITH GRANT OPTION 
GO
use [GD1C2016]
GO
GRANT ALTER ON SCHEMA::[DALE_SA] TO [gd] WITH GRANT OPTION 
GO
use [GD1C2016]
GO
GRANT REFERENCES ON SCHEMA::[DALE_SA] TO [gd] WITH GRANT OPTION 
GO
use [GD1C2016]
GO
GRANT SELECT ON SCHEMA::[DALE_SA] TO [gd] WITH GRANT OPTION 
GO
use [GD1C2016]
GO
GRANT VIEW DEFINITION ON SCHEMA::[DALE_SA] TO [gd] WITH GRANT OPTION 
GO
use [GD1C2016]
GO
GRANT VIEW CHANGE TRACKING ON SCHEMA::[DALE_SA] TO [gd] WITH GRANT OPTION 
GO
*/

-- hago que el usuario gd use por default el esquema de nuestro grupo.

USE [GD1C2016]
GO
ALTER USER [gd] WITH DEFAULT_SCHEMA=[DALE_SA]
PRINT 'SE CAMBIO EL ESQUEMA DEL USUARIO [gd] A [DALE_SA].'
GO



-- creamos la tabla usuario segun nuestro der

/****** Object:  Table [DALE_SA].[USUARIO]    Script Date: 10/05/2016 23:46:27 ******/


/*-----------------------------------------------------------------*/
/*---------------Inicio de borrado de tablas-----------------------*/
/*-----------------------------------------------------------------*/

IF OBJECT_ID('DALE_SA.preguntas') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.preguntas;
END;

IF OBJECT_ID('DALE_SA.oferta') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.oferta;
END;

IF OBJECT_ID('DALE_SA.calificacion') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.calificacion;
END;

IF OBJECT_ID('DALE_SA.compra') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.compra;
END;

IF OBJECT_ID('DALE_SA.publicacion') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.publicacion;
END;

IF OBJECT_ID('DALE_SA.estado_publicacion') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.estado_publicacion;
END;

IF OBJECT_ID('DALE_SA.rubro') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.rubro;
END;

IF OBJECT_ID('DALE_SA.visibilidad') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.visibilidad;
END;

IF OBJECT_ID('DALE_SA.data_cliente') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.data_cliente;
END;

IF OBJECT_ID('DALE_SA.data_empresa') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.data_empresa;
END;

IF OBJECT_ID('DALE_SA.rol_funcionalidad') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.rol_funcionalidad;
END;

IF OBJECT_ID('DALE_SA.funcionalidad') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.funcionalidad;
END;

IF OBJECT_ID('DALE_SA.rol_usuario') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.rol_usuario;
END;

IF OBJECT_ID('DALE_SA.rol') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.rol;
END;

IF OBJECT_ID('DALE_SA.usuario') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.usuario;
END;

IF OBJECT_ID('DALE_SA.direccion') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.direccion;
END;

IF OBJECT_ID('DALE_SA.item_factura') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.item_factura;
END;

IF OBJECT_ID('DALE_SA.factura') IS NOT NULL
BEGIN
    DROP TABLE DALE_SA.factura;
END;

PRINT 'BORRADO DE TABLAS CORRECTO'

/*-----------------------------------------------------------------*/
/*---------------Fin de borrado de tablas--------------------------*/
/*-----------------------------------------------------------------*/


/*-----------------------------------------------------------------*/
/*---------------Inicio de borrado de STORE PROCEDURES-------------*/
/*-----------------------------------------------------------------*/

IF OBJECT_ID('DALE_SA.pr_loguin') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.PR_loguin;
END;

IF OBJECT_ID('DALE_SA.ABMvisibilidad') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.ABMvisibilidad;
END;


IF OBJECT_ID('DALE_SA.CrearRol') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.CrearRol;
END;

IF OBJECT_ID('DALE_SA.ModificarRolFuncionalidad') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.ModificarRolFuncionalidad;
END

IF OBJECT_ID('DALE_SA.ActualizarFechaHoraBD') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.ActualizarFechaHoraBD;
END

IF OBJECT_ID('DALE_SA.pr_factura_publicacion') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.pr_factura_publicacion;
END

IF OBJECT_ID('DALE_SA.pr_publicar') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.pr_publicar;
END

IF OBJECT_ID('DALE_SA.prConsultaUsuarioEmpresa') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.prConsultaUsuarioEmpresa;
END

IF OBJECT_ID('DALE_SA.prConsultaUsuarioCliente') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.prConsultaUsuarioCliente;
END

IF OBJECT_ID('DALE_SA.prCambiarPWD') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.prCambiarPWD;
END


IF OBJECT_ID('DALE_SA.pr_buscar_producto') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.pr_buscar_producto;
END

IF OBJECT_ID('DALE_SA.prCrearUsuarioCliente') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.prCrearUsuarioCliente;
END

IF OBJECT_ID('DALE_SA.prCrearUsuarioEmpresa') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.prCrearUsuarioEmpresa;
END

IF OBJECT_ID('DALE_SA.pr_factura_compra') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.pr_factura_compra;
END

IF OBJECT_ID('DALE_SA.pr_comprar') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.pr_comprar;
END

IF OBJECT_ID('DALE_SA.pr_ofertar') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.pr_ofertar;
END

IF OBJECT_ID('DALE_SA.pr_nro_factura') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.pr_nro_factura;
END

IF OBJECT_ID('DALE_SA.prModificarUsuarioCliente') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.prModificarUsuarioCliente;
END

IF OBJECT_ID('DALE_SA.prModificarUsuarioEmpresa') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.prModificarUsuarioEmpresa;
END

IF OBJECT_ID('DALE_SA.pr_comprar_subasta') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.pr_comprar_subasta;
END


IF OBJECT_ID('DALE_SA.pr_preguntas') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.pr_preguntas;
END

IF OBJECT_ID('DALE_SA.pr_CalificarCompraInmediata') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.pr_CalificarCompraInmediata;
END

IF OBJECT_ID('DALE_SA.pr_CalificarSubasta') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.pr_CalificarSubasta;
END

IF OBJECT_ID('DALE_SA.prConsultarFacturasAVendedores') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.prConsultarFacturasAVendedores;
END

IF OBJECT_ID('DALE_SA.prPaginar_view_CompraSubasta') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.prPaginar_view_CompraSubasta;
END

IF OBJECT_ID('DALE_SA.prPaginar_view_CompraInmediata') IS NOT NULL
BEGIN
    DROP PROCEDURE DALE_SA.prPaginar_view_CompraInmediata;
END







/*-----------------------------------------------------------------*/
/*---------------Fin de borrado de STORE PROCEDURES----------------*/
/*-----------------------------------------------------------------*/

USE [GD1C2016]
GO


/*-----------------------------------------------------------------*/
/*---------------Inicio de borrado de Vistas-----------------------*/
/*-----------------------------------------------------------------*/



IF OBJECT_ID('DALE_SA.vw_usuarioEmpresa') IS NOT NULL
BEGIN
    DROP VIEW DALE_SA.vw_usuarioEmpresa;
END

IF OBJECT_ID('DALE_SA.vw_usuarioCliente') IS NOT NULL
BEGIN
    DROP VIEW DALE_SA.vw_usuarioCliente;
END

IF OBJECT_ID('DALE_SA.vw_facturasAlVendedor') IS NOT NULL
BEGIN
    DROP VIEW DALE_SA.vw_facturasAlVendedor;
END

/*-----------------------------------------------------------------*/
/*---------------Fin de borrado de vistas---------------------------*/
/*-----------------------------------------------------------------*/

USE [GD1C2016]
GO

/*-----------------------------------------------------------------*/
/*---------------Inicio de borrado de Tipos------------------------*/
/*-----------------------------------------------------------------*/



IF TYPE_ID('DALE_SA.TipoFuncionalidad') IS NOT NULL
DROP TYPE [DALE_SA].[TipoFuncionalidad]
GO



/*-----------------------------------------------------------------*/
/*---------------Fin de borrado de tipos---------------------------*/
/*-----------------------------------------------------------------*/

USE [GD1C2016]
GO

/*-----------------------------------------------------------------*/
/*---------------Inicio de borrado de Triggers--------------------*/
/*-----------------------------------------------------------------*/

IF OBJECT_ID('dale_sa.[tr_factura_subasta_finalizada]') IS NOT NULL
BEGIN
   DROP TRIGGER dale_sa.[tr_factura_subasta_finalizada];
END;
GO

IF OBJECT_ID('dale_sa.[tr_publicacion_stock_finaliza]') IS NOT NULL
BEGIN
   DROP TRIGGER dale_sa.[tr_publicacion_stock_finaliza];
END;
GO

IF OBJECT_ID('dale_sa.[tr_bannea_usser]') IS NOT NULL
BEGIN
   DROP TRIGGER dale_sa.[tr_bannea_usser];
END;
GO

IF OBJECT_ID('dale_sa.[tr_rol_deshabilitado]') IS NOT NULL
BEGIN
   DROP TRIGGER dale_sa.[tr_rol_deshabilitado];
END;
GO


/*-----------------------------------------------------------------*/
/*---------------Fin de borrado de Triggers------------------------*/
/*-----------------------------------------------------------------*/

USE [GD1C2016]
GO

/*-----------------------------------------------------------------*/
/*---------------Inicio de borrado de Funciones--------------------*/
/*-----------------------------------------------------------------*/



IF object_id('[DALE_SA].[fcEsNuloOVacio]', 'FN') IS NOT NULL
DROP FUNCTION [DALE_SA].[fcEsNuloOVacio]
GO

IF object_id('[DALE_SA].[ids_to_tabla]', 'TF') IS NOT NULL
DROP FUNCTION [DALE_SA].[ids_to_tabla]
GO

IF object_id('[DALE_SA].[hashear]', 'FN') IS NOT NULL
DROP FUNCTION [DALE_SA].hashear
GO

IF object_id('[DALE_SA].[view_CompraSubasta]', 'IF') IS NOT NULL
DROP FUNCTION [DALE_SA].view_CompraSubasta
GO

IF object_id('[DALE_SA].[view_CompraInmediata]', 'IF') IS NOT NULL
DROP FUNCTION [DALE_SA].view_CompraInmediata
GO

IF object_id('[DALE_SA].[fcEstaCompraFueCalificada]', 'FN') IS NOT NULL
DROP FUNCTION [DALE_SA].fcEstaCompraFueCalificada
GO


/*
FN = Scalar Function
IF = Inlined Table Function
TF = Table Function
*/
/*
SELECT name AS function_name
,SCHEMA_NAME(schema_id) AS schema_name
,type_desc
FROM sys.objects
WHERE type_desc LIKE '%FUNCTION%';
GO
*/

/*-----------------------------------------------------------------*/
/*---------------Fin de borrado de funciones-----------------------*/
/*-----------------------------------------------------------------*/


/*-----------------------------------------------------------------*/
/*---------------Inicio de creacion de tablas----------------------*/
/*-----------------------------------------------------------------*/

create table DALE_SA.direccion(
idDireccion numeric(18) not null primary key identity(1,1),
codigopostal nvarchar(50),
depto nvarchar(50),
piso numeric(18),
numero numeric(18),
calle nvarchar(255)
) 

create table DALE_SA.usuario(
idusuario numeric(18) not null primary key identity(1,1),
password nvarchar(255),
mail nvarchar(255),
estado bit,
fechacreacion datetime not null,
telefono nvarchar(20),
intentosfallidos numeric(1) not null default 0,
username nvarchar(255) not null,
iddireccion numeric(18) references DALE_SA.direccion,
primer_publicacion bit
)

create table DALE_SA.data_empresa(
idusuario numeric(18) not null references DALE_SA.usuario,
cuit nvarchar(50),
rubroempresa nvarchar(255),
ciudad nvarchar(255),
contacto nvarchar(255),
razon_social nvarchar(255) not null
)

create table DALE_SA.data_cliente(
idusuario numeric (18) not null references DALE_SA.usuario,
fecha_nacimiento datetime,
nombre nvarchar(255),
tipo_documento tinyint,
apellido nvarchar(255),
dni numeric(18)
)

create table DALE_SA.visibilidad(
idvisibilidad numeric(18) not null primary key identity(1,1),
descripcion nvarchar(255) not null,
porcentaje_venta numeric(18,2) not null,
precio_publicacion numeric(18,2) not null,
precio_envio numeric(18,2) not null,
codigo numeric (18,0),
estado bit
)

create table DALE_SA.rubro(
idrubro numeric(18) not null primary key identity(1,1),
descripcion_corta nvarchar(100) not null,
descripcion_larga nvarchar(255)
)

create table DALE_SA.factura(
idfactura numeric(18) not null primary key identity(1,1),
total numeric(18,2) not null,
fecha datetime not null,
numero numeric(18,0)
)

create table DALE_SA.estado_publicacion(
idestado_publicacion numeric(18) not null primary key identity(1,1),
descripcion nvarchar(255) not null
)

create table DALE_SA.publicacion(
idpublicacion numeric(18) not null primary key identity(1,1),
stock numeric(18),
descripcion nvarchar(255),
estado numeric(18) not null references DALE_SA.estado_publicacion,
idvisibilidad numeric(18) not null references DALE_SA.visibilidad,
fecha_vencimiento datetime,
fecha_inicio datetime,
permitir_preguntas bit,
permitir_envio bit,
precio numeric(18,2) not null,
tipo_publicacion nvarchar(255) not null,
costo numeric(18,2) not null,
idrubro numeric(18)  references DALE_SA.rubro,
idusuario numeric(18) references DALE_SA.usuario,
idfactura numeric(18) references DALE_SA.factura,
publicacionCodigo numeric(18)
)

create table DALE_SA.compra(
idcompra numeric(18) not null primary key identity (1,1),
cantidad numeric(18) not null,
fecha datetime not null,
idpublicacion numeric(18) not null references DALE_SA.publicacion,
idusuario numeric(18) not null references DALE_SA.usuario,
idfactura numeric(18) references DALE_SA.factura,
numeroCalificacion numeric(18)
)

create table DALE_SA.item_factura(
iditem_factura numeric(18) not null primary key identity(1,1), 
cantidad numeric(18) not null,
monto numeric(18,2) not null,
idfactura numeric(18) not null references DALE_SA.factura
)

create table DALE_SA.calificacion(
idusuariovendedor numeric(18) not null references DALE_SA.usuario(idusuario),
idusuariocomprador numeric(18) not null references DALE_SA.usuario(idusuario),
idcompra numeric(18) not null references DALE_SA.compra,
cantidad_estrella numeric(18,0) not null,
descripcion nvarchar(255) not null
)

create table DALE_SA.oferta(
idpublicacion numeric(18) not null references DALE_SA.publicacion,
idusuario numeric(18) not null references DALE_SA.usuario,
fecha datetime not null,
monto numeric(18,2) not null,
envio bit,
activa bit
)

create table DALE_SA.preguntas(
idpublicacion numeric(18) not null references DALE_SA.publicacion,
pregunta nvarchar(255),
respuesta nvarchar(255)
)

create table DALE_SA.funcionalidad(
idfuncionalidad numeric(18) not null primary key identity (1,1),
descripcion nvarchar(255) not null
)

create table DALE_SA.rol(
idrol numeric(18) not null primary key identity(1,1),
nombre nvarchar(50) not null,
estado bit not null
)

create table DALE_SA.rol_funcionalidad(
idrol numeric(18) not null references DALE_SA.rol,
idfuncionalidad numeric(18) not null references DALE_SA.funcionalidad
)

create table DALE_SA.rol_usuario(
idrol numeric(18) not null references DALE_SA.rol,
idusuario numeric(18) not null references DALE_SA.usuario
)

create index IDPublicacionDeLaTablaCompra on dale_sa.publicacion(idpublicacion)
create index IDFacturaDeTablaPublicacion on dale_sa.publicacion(idfactura)
create index publicacionCodigoDeLaTablaPublicacion on dale_sa.publicacion(publicacionCodigo)
create index DNIDeTablaClienteData on dale_sa.data_cliente(dni)
create index razonSocialDeTablaEmpresaData on dale_sa.data_empresa(razon_social)

PRINT 'CREACION DE TABLAS CORRECTA'

/*-----------------------------------------------------------------*/
/*------------------Fin de creacion de tablas----------------------*/
/*-----------------------------------------------------------------*/



/*-----------------------------------------------------------------*/
/*------------------Inicio de carga de tablas PARTE 1--------------*/
/*-----------------------------------------------------------------*/


SELECT DISTINCT Publ_Cli_Dni, Publ_Cli_Cod_Postal, Publ_Cli_Depto, Publ_Cli_Dom_Calle, Publ_Cli_Fecha_Nac, Publ_Cli_Mail, Publ_Cli_Nombre, Publ_Cli_Nro_Calle, Publ_Cli_Piso, Publ_Cli_Apeliido
INTO #dale_sa_usuario_temporal
FROM gd_esquema.Maestra
where Publ_Cli_Dni is not null

insert into DALE_SA.direccion(codigopostal,depto,piso,numero,calle)
select t.Publ_Cli_Cod_Postal, t.Publ_Cli_Depto, t.Publ_Cli_Piso, t.Publ_Cli_Nro_Calle, t.Publ_Cli_Dom_Calle
from #dale_sa_usuario_temporal t

insert into DALE_SA.usuario(password,mail,estado,fechacreacion,telefono,intentosfallidos,username,iddireccion)
select convert(nvarchar(255),t.Publ_Cli_Dni), t.Publ_Cli_Mail, 1, t.Publ_Cli_Fecha_Nac, null, 0, replace(lower(t.Publ_Cli_Apeliido+t.Publ_Cli_Nombre),'',''),	(	select m.idDireccion
																								from DALE_SA.direccion m
																								where	m.calle = t.Publ_Cli_Dom_Calle and
																										m.numero = t.Publ_Cli_Nro_Calle and
																										m.piso = t.Publ_Cli_Piso and
																										m.depto = t.Publ_Cli_Depto and
																										m.codigopostal = t.Publ_Cli_Cod_Postal
																								)
from #dale_sa_usuario_temporal t

insert into DALE_SA.data_cliente(idusuario,apellido,dni,fecha_nacimiento,nombre,tipo_documento)
select  distinct (select m.idusuario
		from DALE_SA.usuario m
		where m.password = convert(nvarchar(255),t.Publ_Cli_Dni)), t.Publ_Cli_Apeliido,t.Publ_Cli_Dni,t.Publ_Cli_Fecha_Nac,t.Publ_Cli_Nombre,1
from #dale_sa_usuario_temporal t


DROP TABLE #dale_sa_usuario_temporal

SELECT DISTINCT Publ_Empresa_Cod_Postal, Publ_Empresa_Cuit, Publ_Empresa_Depto, Publ_Empresa_Dom_Calle, Publ_Empresa_Fecha_Creacion, Publ_Empresa_Mail, Publ_Empresa_Nro_Calle, Publ_Empresa_Piso, Publ_Empresa_Razon_Social
INTO #dale_sa_empresa_temporal
FROM gd_esquema.Maestra
where Publ_Empresa_Razon_Social is not null

insert into DALE_SA.direccion(codigopostal,depto,piso,numero,calle)
select distinct t.Publ_Empresa_Cod_Postal, t.Publ_Empresa_Depto, t.Publ_Empresa_Piso, t.Publ_Empresa_Nro_Calle, t.Publ_Empresa_Dom_Calle
from #dale_sa_empresa_temporal t

insert into DALE_SA.usuario(password,mail,estado,fechacreacion,telefono,intentosfallidos,username,iddireccion)
select distinct t.Publ_Empresa_Razon_Social, t.Publ_Empresa_Mail, 1, t.Publ_Empresa_Fecha_Creacion, null, 0, Publ_Empresa_Razon_Social, (	select m.idDireccion
																																	from DALE_SA.direccion m
																																	where	m.calle = t.Publ_Empresa_Dom_Calle and
																																	m.numero = t.Publ_Empresa_Nro_Calle and
																																	m.piso = t.Publ_Empresa_Piso and
																																	m.depto = t.Publ_Empresa_Depto and
																																	m.codigopostal = t.Publ_Empresa_Cod_Postal)
from #dale_sa_empresa_temporal t

insert into DALE_SA.data_empresa(cuit, razon_social, idusuario)
select  distinct t.Publ_Empresa_Cuit, t.Publ_Empresa_Razon_Social,(	select m.idusuario
																	from DALE_SA.usuario m
																	where m.username = t.Publ_Empresa_Razon_Social)
from #dale_sa_empresa_temporal t


DROP TABLE #dale_sa_empresa_temporal


/*se fuerza el valor del envio en $100*/
insert into DALE_SA.visibilidad(descripcion,porcentaje_venta,precio_publicacion,precio_envio,codigo,estado)
select distinct t.Publicacion_Visibilidad_Desc,t.Publicacion_Visibilidad_Porcentaje,t.Publicacion_Visibilidad_Precio,100,t.Publicacion_Visibilidad_Cod,1
FROM gd_esquema.Maestra t

/*CREAMOS ESTADOS DE PUBLICACION*/
USE [GD1C2016]
GO
/*Migramos estados, Forzamos equiparamos el estado Publicada a Finalizada*/
INSERT INTO [DALE_SA].[estado_publicacion]
           ([descripcion])
     VALUES
           ('Finalizada')
/*Finalizada remplaza a publicada de la migracion */
INSERT INTO [DALE_SA].[estado_publicacion]
           ([descripcion])
     VALUES
           ('Activa')
INSERT INTO [DALE_SA].[estado_publicacion]
           ([descripcion])
     VALUES
           ('Borrador')
INSERT INTO [DALE_SA].[estado_publicacion]
           ([descripcion])
     VALUES
           ('Pausada')
GO


insert into DALE_SA.rubro(descripcion_corta)
select distinct t.Publicacion_Rubro_Descripcion
FROM gd_esquema.Maestra t

insert into DALE_SA.factura(fecha,total,numero)
select distinct t.Factura_Fecha,t.Factura_Total, t.Factura_Nro
FROM gd_esquema.Maestra t
where t.Factura_Fecha is not null and t.Factura_Total is not null and t.Factura_Nro is not null
go

insert into DALE_SA.publicacion		(stock,descripcion,idvisibilidad,fecha_vencimiento,fecha_inicio, permitir_preguntas,precio,
									tipo_publicacion,costo,idrubro,idusuario,idfactura,estado,publicacionCodigo)
select distinct						t.Publicacion_Stock, t.Publicacion_Descripcion,
									(select vis.idvisibilidad from DALE_SA.visibilidad vis 
											where	vis.codigo =t.Publicacion_Visibilidad_Cod)
									, t.Publicacion_Fecha_Venc ,t.Publicacion_Fecha,
									0 , t.Publicacion_Precio,t.Publicacion_Tipo, t.Publicacion_Precio, 
									(select  rub.idrubro	from DALE_SA.rubro rub where rub.descripcion_corta=t.Publicacion_Rubro_Descripcion),
									(
									select usu.idusuario 
									from DALE_SA.usuario usu 
									where	(
											(select emp.idusuario
											from DALE_SA.data_empresa emp
											where t.Publ_Empresa_Razon_Social=emp.razon_social) = usu.idusuario
											or
											((select cli.idusuario
											from DALE_SA.data_cliente cli
											where t.Publ_Cli_Dni=cli.dni)= usu.idusuario)
											)
									)
									,	(select  distinct fac.idfactura
										from DALE_SA.factura fac  
										where fac.fecha=t.Factura_Fecha and fac.total=t.Factura_Total and 
										fac.numero=t.Factura_Nro and 
										(t.Factura_Nro is not null) and (fac.idfactura is not null)
										)
										,
										(select  est.idestado_publicacion
										from DALE_SA.estado_publicacion est
										where descripcion='Finalizada'),
										t.Publicacion_Cod
FROM gd_esquema.Maestra t, DALE_SA.factura fac2 
where fac2.numero=t.Factura_Nro


insert into DALE_SA.oferta(fecha,monto,idusuario,idpublicacion)
select distinct t.Oferta_Fecha,t.Oferta_Monto,
				(
				select usu.idusuario 
				from DALE_SA.usuario usu 
				where	((select cli.idusuario
						from DALE_SA.data_cliente cli
						where t.Cli_Dni=cli.dni)= usu.idusuario)

				),
				pub.idpublicacion
FROM gd_esquema.Maestra t, DALE_SA.publicacion pub
where	(t.Oferta_Fecha is not null) and (t.Oferta_Monto is not null) and
		(t.Publicacion_Cod=pub.publicacionCodigo)

insert into DALE_SA.compra(cantidad,fecha,idfactura,idpublicacion,idusuario,numeroCalificacion)
select t.Compra_Cantidad,t.Compra_Fecha,pub.idfactura, pub.idpublicacion,
		(select usu.idusuario 
		from DALE_SA.usuario usu 
		where	((select cli.idusuario
				from DALE_SA.data_cliente cli
				where t.Cli_Dni=cli.dni)= usu.idusuario)),
		null
FROM gd_esquema.Maestra t, DALE_SA.publicacion pub
where	(t.Compra_Cantidad is not null) and (t.Publicacion_Cod=pub.publicacionCodigo) and (t.Compra_Fecha is not null) and (t.Calificacion_Cant_Estrellas is null)

insert into DALE_SA.item_factura(cantidad,monto,idfactura)
select t.Item_Factura_Cantidad, t.Item_Factura_Monto, fac.idfactura
from gd_esquema.Maestra t, DALE_SA.factura fac
where	t.Item_Factura_Cantidad is not null and
		t.Item_Factura_Monto is not null and 
		t.Factura_Nro is not null and
		t.Factura_Nro=fac.numero

go

IF OBJECT_ID('dale_sa.insertCalificacion') IS NOT NULL
BEGIN
   DROP TRIGGER dale_sa.insertCalificacion;
END;
GO

CREATE TRIGGER dale_sa.insertCalificacion on dale_sa.calificacion
AFTER INSERT
AS BEGIN TRANSACTION
UPDATE DALE_SA.compra
SET numeroCalificacion = 1
WHERE exists (	select top 1 *
				from inserted i, DALE_SA.compra com
				where com.idcompra = i.idcompra and com.numeroCalificacion is null
				) 
COMMIT
GO

/*dropeo el dato Calificacion_Codigo ya que pareciera q no lo necesitamos*/
insert into DALE_SA.calificacion(cantidad_estrella,descripcion,idcompra,idusuariocomprador,idusuariovendedor)
select t.Calificacion_Cant_Estrellas/2,t.Calificacion_Descripcion,
		(select distinct top 1 comp.idcompra
		from DALE_SA.compra comp , DALE_SA.publicacion pub, gd_esquema.Maestra t2
		where t.Publicacion_Cod = pub.publicacionCodigo and 
		comp.numeroCalificacion is null and
		comp.idpublicacion = pub.idpublicacion and
		t.Calificacion_Codigo is not null and
		t2.Calificacion_Cant_Estrellas is not null
		and t.Calificacion_Codigo=t2.Calificacion_Codigo
	    and comp.idusuario=	(select usu.idusuario 
		from DALE_SA.usuario usu 
		where	((select cli.idusuario
				from DALE_SA.data_cliente cli
				where t.Cli_Dni=cli.dni)= usu.idusuario))
		)
		,
		(select usu.idusuario 
		from DALE_SA.usuario usu 
		where	((select cli.idusuario
				from DALE_SA.data_cliente cli
				where t.Cli_Dni=cli.dni)= usu.idusuario))
		,
		(select usu.idusuario 
		from DALE_SA.usuario usu 
		where	(
				(	select emp.idusuario
					from DALE_SA.data_empresa emp
					where t.Publ_Empresa_Razon_Social=emp.razon_social) = usu.idusuario
				or
				((	select cli.idusuario
					from DALE_SA.data_cliente cli
					where t.Publ_Cli_Dni=cli.dni)= usu.idusuario)
				))
from gd_esquema.Maestra t
where	t.Calificacion_Codigo is not null

DROP TRIGGER dale_sa.insertCalificacion;

PRINT 'MIGRACION DE DATOS CORRECTA'

/*-----------------------------------------------------------------*/
/*------------------Fin de carga de tablas PARTE 1-----------------*/
/*-----------------------------------------------------------------*/

/*-----------------------------------------------------------------*/
/*------------------Inicio de carga de tablas PARTE 2--------------*/
/*-----------------------------------------------------------------*/

/*Creamos roles*/
GO

INSERT INTO [DALE_SA].[rol]
           ([nombre]
           ,[estado])
     VALUES
           ('CLIENTE'
           ,1)
GO

/*
INSERT INTO [DALE_SA].[rol]
           ([nombre]
           ,[estado])
     VALUES
           ('VENDEDOR'
           ,1)
GO
*/

INSERT INTO [DALE_SA].[rol]
           ([nombre]
           ,[estado])
     VALUES
           ('EMPRESA'
           ,1)
GO
INSERT INTO [DALE_SA].[rol]
           ([nombre]
           ,[estado])
     VALUES
           ('ADMINISTRADOR'
           ,1)
GO

/*Creamos Funcionalidades*/

INSERT INTO [DALE_SA].[funcionalidad]
           ([descripcion])
     VALUES
           ('ABM de ROL')
----------------
DECLARE @temp numeric(18)
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_funcionalidad]
           ([idrol]
           --,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('VENDEDOR','EMPRESA')) 		  
			,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('ADMINISTRADOR')) 		

------------------------------------------------
INSERT INTO [DALE_SA].[funcionalidad]
           ([descripcion])
     VALUES
           ('ABM de USUARIOS')
----------------		   
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_funcionalidad]
           ([idrol]
           --,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('VENDEDOR','EMPRESA')) 		  
			,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('ADMINISTRADOR')) 		

------------------------------------------------
INSERT INTO [DALE_SA].[funcionalidad]
           ([descripcion])
     VALUES
           ('ABM de RUBRO')
----------------		   		   
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_funcionalidad]
           ([idrol]
           --,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('VENDEDOR','EMPRESA')) 		  
			,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('ADMINISTRADOR')) 		
------------------------------------------------
INSERT INTO [DALE_SA].[funcionalidad]
           ([descripcion])
     VALUES
           ('ABM de VISIBILIDAD')
----------------		   		   
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_funcionalidad]
           ([idrol]
           --,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('VENDEDOR','EMPRESA')) 		  
			,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('ADMINISTRADOR')) 		
------------------------------------------------
/*
INSERT INTO [DALE_SA].[funcionalidad]
           ([descripcion])
     VALUES
           ('ABM de Visibilidad')
----------------		   		   
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_funcionalidad]
           ([idrol]
           --,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('VENDEDOR','EMPRESA')) 		  
			,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('ADMINISTRADOR')) 		
*/
------------------------------------------------
INSERT INTO [DALE_SA].[funcionalidad]
           ([descripcion])
     VALUES
           ('Generar Publicacion')

----------------		   
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_funcionalidad]
           ([idrol]
           --,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('VENDEDOR','EMPRESA')) 		  
			,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('EMPRESA')) 		

------------------------------------------------
INSERT INTO [DALE_SA].[funcionalidad]
           ([descripcion])
     VALUES
           ('Comprar y Ofertar')
----------------		   
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_funcionalidad]
           ([idrol]
           --,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('VENDEDOR','EMPRESA')) 		  
			,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('CLIENTE')) 		
------------------------------------------------

INSERT INTO [DALE_SA].[funcionalidad]
           ([descripcion])
     VALUES
           ('Historial del Cliente y Calificacion')
----------------		   
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_funcionalidad]
           ([idrol]
           --,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('VENDEDOR','EMPRESA')) 		  
			,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('CLIENTE')) 		
------------------------------------------------

INSERT INTO [DALE_SA].[funcionalidad]
           ([descripcion])
     VALUES
           ('Facturas por Vendedor')
----------------		   		   		   
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_funcionalidad]
           ([idrol]
           --,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('VENDEDOR','EMPRESA')) 		  
			,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('ADMINISTRADOR')) 		
------------------------------------------------

INSERT INTO [DALE_SA].[funcionalidad]
           ([descripcion])
     VALUES
           ('Listado Estadistico')
----------------		   		   		   
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_funcionalidad]
           ([idrol]
           --,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('VENDEDOR','EMPRESA')) 		  
			,[idfuncionalidad])(SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('ADMINISTRADOR')) 		
------------------------------------------------
GO

/*Migramos rubros*/

/*INSERT INTO DALE_SA.rubro (descripcion_corta,descripcion_larga) (SELECT distinct M.Publicacion_Rubro_Descripcion,'Desc Larga' from gd_esquema.Maestra M)
DCAPPA LO USAREMOS LUEGO PAR UNIFICAR*/



USE [GD1C2016]
GO

/*INSERT INTO [DALE_SA].[visibilidad]
           ([descripcion]
           ,[porcentaje_venta]
           ,[precio_publicacion]
           ,[precio_envio]
		   ,codigo)
   Select distinct Publicacion_Visibilidad_Desc,Publicacion_Visibilidad_Porcentaje,Publicacion_Visibilidad_Precio,200,Publicacion_Visibilidad_Cod from gd_esquema.Maestra M
GO
DCAPPA LO USAREMOS MAS ADELANTE PARA UNIFICAR
*/

/*-----------------------------------------------------------------*/
/*------------------Fin de carga de tablas PARTE 2-----------------*/
/*-----------------------------------------------------------------*/
update DALE_SA.usuario set password='10edd0ca144fd533661703f74f36becaf97befc00904dd2f4135c0ab49df964e'

DECLARE @temp numeric(18)
SET @temp=(SELECT idrol from [DALE_SA].[rol] where nombre='CLIENTE')
INSERT INTO [DALE_SA].[rol_usuario]
           ([idrol]
           ,[idusuario])
    SELECT @temp,U.idusuario  from DALE_SA.usuario U, DALE_SA.data_cliente C where u.idusuario = C.idusuario

USE [GD1C2016]
GO

DECLARE @temp numeric(18)
SET @temp=(SELECT idrol from [DALE_SA].[rol] where nombre='EMPRESA')
INSERT INTO [DALE_SA].[rol_usuario]
           ([idrol]
           ,[idusuario])
    SELECT @temp,U.idusuario  from DALE_SA.usuario U, DALE_SA.data_empresa E where u.idusuario = e.idusuario

USE [GD1C2016]
GO

DECLARE @temp numeric(18)
INSERT INTO [DALE_SA].[USUARIO]
           ([username]
           ,[mail]
           ,[fechacreacion] 
           ,[estado]
           ,[password]
           ,[intentosfallidos])
     VALUES
           ('admin'
            ,'admin@mercadoenvio.com'
            ,getdate()
           ,1
           ,'e6b87050bfcb8143fcb8db0170a4dc9ed00d904ddd3e2a4ad1b1e8dc0fdc9be7'
           ,0)

SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_usuario]
           ([idrol]
           ,[idusuario])
    SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('EMPRESA', 'CLIENTE','ADMINISTRADOR')

INSERT INTO [DALE_SA].[USUARIO]
            ([username]
           ,[mail]
           ,[fechacreacion] 
           ,[estado]
           ,[password]
           ,[intentosfallidos])
     VALUES
           ('dcappa'
	   ,'dcappa@gmail.com'
            ,getdate()	
           ,1
           ,'63f0e4d34d315df917154b5f4d50ec95308eaa40f3e34cfef759bf10f7e65c8c'
           ,0)
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_usuario]
           ([idrol]
           ,[idusuario])
    --SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('VENDEDOR','CLIENTE','ADMINISTRADOR')
	SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('EMPRESA', 'CLIENTE','ADMINISTRADOR')

INSERT INTO [DALE_SA].[USUARIO]
           ([username]
           ,[mail]
           ,[fechacreacion] 
           ,[estado]
           ,[password]
           ,[intentosfallidos])
     VALUES
           ('esuchecki'
            ,'emiliano.gsuchecki@gmail.com'
            ,getdate()
           ,1
           ,'8932171a2b8d8b98d5821eec9d4538270a06a1a4071096a498e7cb5d26574600'
           ,0)
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_usuario]
           ([idrol]
           ,[idusuario])
    SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('ADMINISTRADOR','EMPRESA','CLIENTE')

INSERT INTO [DALE_SA].[USUARIO]
            ([username]
           ,[mail]
           ,[fechacreacion] 
           ,[estado]
           ,[password]
           ,[intentosfallidos])
     VALUES
           ('lmontavan'
	    ,'mantovanleonardo@gmail.com'
            ,getdate()		
           ,1
           ,'21f05076cc1ec840c077c118f830b731a2ce7414e9329a882f0862b1111ab2a0'
           ,0)
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_usuario]
           ([idrol]
           ,[idusuario])
    SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('CLIENTE')

INSERT INTO [DALE_SA].[USUARIO]
            ([username]
           ,[mail]
           ,[fechacreacion] 
           ,[estado]
           ,[password]
           ,[intentosfallidos])
     VALUES
           ('amarcovecchio'
           ,'andreshmarco@gmail.com'
            ,getdate()
           ,1
           ,'2862d9a120f5104203bd0d06d8e17c2c98f76930bcfbcc77777462d2bb0afe53'
           ,0)
SET @temp=@@IDENTITY
INSERT INTO [DALE_SA].[rol_usuario]
           ([idrol]
           ,[idusuario])
    SELECT idrol,@temp from [DALE_SA].[rol] where nombre IN('EMPRESA')

GO

USE [GD1C2016]
GO
/****** Object:  Trigger [DALE_SA].[tr_bannea_usser]    Script Date: 13/05/2016 16:37:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [DALE_SA].[tr_bannea_usser] on [DALE_SA].[USUARIO] 
AFTER UPDATE AS
BEGIN
UPDATE DALE_SA.USUARIO set estado=0
WHERE DALE_SA.USUARIO.estado=1 AND DALE_SA.USUARIO.idUsuario IN (SELECT idUsuario from inserted where intentosfallidos > 2)END

GO

--el nuevo trigger esta mas abajo..
/*
CREATE TRIGGER [DALE_SA].[tr_publicacion_stock_finaliza] on [DALE_SA].[publicacion] 
AFTER UPDATE AS
BEGIN
UPDATE DALE_SA.publicacion set estado=(select idestado_publicacion from DALE_SA.estado_publicacion where estado_publicacion.descripcion='Finalizada')
WHERE idpublicacion= (SELECT idfactura from inserted where stock=0 )
END

GO
*/


USE [GD1C2016]
GO
/****** Object:  StoredProcedure [dbo].[pr_loguin]    Script Date: 13/05/2016 14:52:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [DALE_SA].[pr_loguin](@username varchar(50),@password char(64)) AS
DECLARE @retorno numeric(12)
DECLARE @estado bit
BEGIN
SELECT @retorno=idUsuario,@estado=estado FROM [DALE_SA].[USUARIO] T1 
WHERE (T1.username=@username) AND (T1.password = @password)
IF (@retorno IS NULL) 
BEGIN
UPDATE [DALE_SA].[USUARIO] SET [DALE_SA].[USUARIO].intentosfallidos=((SELECT intentosfallidos from [DALE_SA].[USUARIO] where USUARIO.username=@username ) +1)  where USUARIO.username=@username
SELECT -1  as idUsuario
END
ELSE
BEGIN
 if (@estado=1)
  BEGIN
	UPDATE [DALE_SA].[USUARIO] SET [DALE_SA].[USUARIO].intentosfallidos=0 where USUARIO.username=@username
	SELECT @retorno as idUsuario
  END
 ELSE
   SELECT -2 as idUsuario
 END
END

GO

------------------------------------------------------------------------------------------------

/*			CODIGO PARA ABM_ROL			*/
/*			INICIO						*/
/*			INICIO						*/


-- Creamos un Trigger para que cuando alguien Des-Habilita un Rol, quite dicho rol a todos los usuarios que lo posean.
--
-- Nota: Se deja preparado para que el dia de mañana si se borra mas de un rol, los borre de la tabla.
--
CREATE TRIGGER [DALE_SA].[tr_rol_deshabilitado] on [DALE_SA].[rol] 
AFTER UPDATE AS
BEGIN

	If (( select count(*) from inserted where estado = 0 ) > 0)
	BEGIN
		DELETE FROM [DALE_SA].[rol_usuario] WHERE idrol in ( select idrol from inserted where estado = 0)
	END

END
GO

CREATE TYPE [DALE_SA].TipoFuncionalidad -- Creo un tipo de datos como tabla y ademas de la misma estructura que DALE_SA.funcionalidad
AS TABLE
(
  idfuncionalidad Numeric (18,0),
  descripcion NVARCHAR(255)
  -- etc etc.
);
GO

CREATE PROCEDURE [DALE_SA].ModificarRolFuncionalidad (
	@idRol AS Numeric(18,0),
	@nombre AS Nvarchar(50),
  @dt AS [DALE_SA].TipoFuncionalidad READONLY)
AS
BEGIN
  SET NOCOUNT ON;

  --le cambio el nombre al rol
  UPDATE [DALE_SA].rol
  SET nombre = Rtrim(Ltrim(@nombre))
  WHERE idrol = @idRol

  --elimino los rol_funcionalidad existentes

  begin tran t1
  DELETE FROM DALE_SA.rol_funcionalidad
  WHERE idrol= @idrol

  --Ahora guardo los nuevos registros en la tabla rol_funcionalidad
  --Nota en lugar de crear un trigger se uso el procedimiento para validar que las funcionalidades asignadas a un rol sean distintas

  --INSERT dbo.RealTable(column list) SELECT column list FROM @dt;
  --insert into [dbo].Records select * from @myTableType 
  INSERT INTO DALE_SA.rol_funcionalidad (idfuncionalidad , idrol)
  SELECT DISTINCT idfuncionalidad as idFuncionalidad, @idrol AS idrol FROM @dt

  commit tran t1

END
GO

/*
CREATE TRIGGER [DALE_SA].[tr_rol_funcionalidad_duplicados] on [DALE_SA].rol_funcionalidad
INSTEAD OF INSERT AS
BEGIN
	INSERT INTO [DALE_SA].rol_funcionalidad (idfuncionalidad , idrol)

END
*/


CREATE PROCEDURE [DALE_SA].CrearRol (
	@nombre AS Nvarchar(50)
	)
AS
BEGIN
  INSERT INTO DALE_SA.rol (nombre, estado)
  values ( Rtrim(Ltrim(@nombre)) , 1)
  --Declare @ID numeric (18,0);
  --select @ID = SCOPE_IDENTITY()
  SELECT CAST(scope_identity() AS int)
END
GO


/*			FIN							*/
/*			FIN							*/
/*			CODIGO PARA ABM_ROL			*/

------------------------------------------------------------------------------------------------

/*			CODIGO FECHA_HORA APP		*/
/*			INICIO						*/
/*			INICIO						*/

CREATE PROCEDURE [DALE_SA].[ActualizarFechaHoraBD] (
	@nuevaFechaHora AS varchar(25)
	)
AS
BEGIN
	declare @fechaHora Datetime
	set @fechaHora = CONVERT(DateTime,@nuevaFechaHora,121)


	--ejecutar metodos que actualice los valores en la BD...
	declare @idEstadoPublicacionFinalizado Numeric(18,0)
	declare @idEstadoPublicacionActiva Numeric(18,0)
	declare @idEstadoPublicacionPausada Numeric(18,0)
	set @idEstadoPublicacionFinalizado =	(
											select idestado_publicacion
											from DALE_SA.estado_publicacion
											WHERE descripcion = 'Finalizada'
											)
	
	set @idEstadoPublicacionPausada =	(
											select idestado_publicacion
											from DALE_SA.estado_publicacion
											WHERE descripcion = 'Pausada'
											)
	
	set @idEstadoPublicacionActiva =	(
											select idestado_publicacion
											from DALE_SA.estado_publicacion
											WHERE descripcion = 'Activa'
											)
	
	Update DALE_SA.publicacion
	SET estado = @idEstadoPublicacionFinalizado
	WHERE (estado in (@idEstadoPublicacionActiva,@idEstadoPublicacionPausada)) and (fecha_vencimiento < ( DATEADD(hh, 3, @fechaHora))) 
	--sumamos +1 dia para que no tenga en cuenta la hora. 
	

	
	--desde aca le devuelve al aplicativo datos
	
	PRINT ('Nueva hora seteada en el sistema')
	select @fechaHora
END
GO

--exec DALE_SA.ActualizarFechaHoraBD '2016/07/03 09:00:00'

/*			FIN							*/
/*			FIN							*/
/*			CODIGO FECHA_HORA APP		*/

------------------------------------------------------------------------------------------------

/*			CODIGO ABM_PUBLICACION		*/
/*			INICIO						*/
/*			INICIO						*/

/****** Object:  StoredProcedure [DALE_SA].[pr_factura_publicacion]    Script Date: 02/06/2016 15:07:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [DALE_SA].[pr_nro_factura] AS
DECLARE @retorno numeric(18)
BEGIN

SELECT @retorno=MAX(numero)+1 from DALE_SA.factura
END
return @retorno
GO

CREATE PROCEDURE [DALE_SA].[pr_factura_publicacion](@fecha nvarchar(255),@monto numeric(18,2),@cantidad numeric(18,0)) AS           
DECLARE @idfactura numeric(18)
DECLARE @nrofac numeric(18)
BEGIN

exec @nrofac= DALE_SA.pr_nro_factura


INSERT INTO [DALE_SA].[factura]
           ([total]
           ,[fecha]
           ,[numero])
     VALUES
           (@monto
           ,convert(datetime,@fecha)
           ,@nrofac)
set @idfactura=@@IDENTITY

INSERT INTO [DALE_SA].[item_factura]
           ([cantidad]
           ,[monto]
           ,[idfactura])
     VALUES
           (@cantidad
           ,@monto
           ,@idfactura)

return @idfactura

END




/****** Object:  StoredProcedure [DALE_SA].[pr_publicar]    Script Date: 02/06/2016 15:06:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [DALE_SA].[pr_publicar]( @stock numeric(18,0),@descripcion nvarchar(255),@estado numeric(18,0),
@idvisibilidad numeric(18,0),@fecha_inicio datetime,@fecha_vencimiento datetime,@permitir_preguntas bit,@permitir_envio bit,
@precio numeric(18,2),@costo numeric(18,2),@tipo_publicacion nvarchar(255),@idrubro numeric(18,0),@idusuario numeric(18,0))           AS           
DECLARE @idpublicacion numeric(18)
DECLARE @idfactura numeric(18)
DECLARE @costopublicacion numeric(18,2)
DECLARE @idestado numeric(18)
BEGIN

INSERT INTO [DALE_SA].[publicacion]
           ([stock]
           ,[descripcion]
           ,[estado]
           ,[idvisibilidad]
           ,[fecha_inicio]
           ,[fecha_vencimiento]
           ,[permitir_preguntas]
		   ,[permitir_envio]
           ,[precio]
		   ,[costo]
           ,[tipo_publicacion]
     
           ,[idrubro]
           ,[idusuario]
           )
     VALUES
            (@stock,@descripcion,@estado,@idvisibilidad,@fecha_inicio,@fecha_vencimiento,@permitir_preguntas,

@permitir_envio,@precio,@costo,@tipo_publicacion,@idrubro,@idusuario)
set @idpublicacion=@@IDENTITY

declare @precio_publicacion numeric(18,2)
declare @aux bit
select  @precio_publicacion=vis.precio_publicacion,@costopublicacion=vis.precio_publicacion from DALE_SA.visibilidad vis where vis.idvisibilidad=@idvisibilidad
select @idestado=ep.idestado_publicacion from DALE_SA.estado_publicacion ep where ep.descripcion='Borrador'
select @aux=us.primer_publicacion from DALE_SA.usuario us where us.idusuario=@idusuario

-- si no era la primera publicacion free, la factura (no tiene que ser un borrador, ni ser una publicacion gratuita)
if ((@costopublicacion <> 0)AND (@estado<>@idestado) AND @aux is not null)
	BEGIN
		EXEC @idfactura=[DALE_SA].[pr_factura_publicacion] @fecha_inicio, @precio_publicacion,1
		update DALE_SA.publicacion set DALE_SA.publicacion.idfactura=@idfactura where DALE_SA.publicacion.idpublicacion=@idpublicacion 
	END

--si todavia no habia usado lo de la primera publicacion free, y la publicacion no es gratuita ni borrador, entonces NO factura pero le setea el flag de primera publicacion gratuita usada = True.
else if ((@costopublicacion <> 0)AND (@estado<>@idestado) AND @aux is null)
	begin 
		update DALE_SA.usuario 
		set primer_publicacion=1 where idusuario=@idusuario
	end
END


go

CREATE PROCEDURE [DALE_SA].[pr_buscar_producto](@pagina bigint,@PgSize bigint,@idusuario nvarchar(255),@desc nvarchar(255),@list_id nvarchar(255)) AS
DECLARE @idestado numeric(18)
DECLARE @PreviousPageOffSet bigint
DECLARE @totalpage bigint
DECLARE @total bigint

select  @idestado=idestado_publicacion  from DALE_SA.estado_publicacion ep where ep.descripcion='Activa'
select @total=COUNT(*) from DALE_SA.publicacion p,DALE_SA.visibilidad vis 
where p.idvisibilidad=vis.idvisibilidad 
and p.estado=@idestado 
and p.idusuario != @idusuario
and p.descripcion like '%'+@desc+'%'
and p.idrubro in (select * from ids_to_tabla(@list_id))


set @PreviousPageOffSet= (@pagina - 1) * @PgSize; 
 
    set @totalpage =  (@total / @PgSize)
     
    if (@total % @PgSize > 0)
	begin
        set @totalpage=@totalpage + 1;
		end
BEGIN
select @idestado=idestado_publicacion  from DALE_SA.estado_publicacion ep where ep.descripcion='Activa'

select TOP (@PgSize) @totalpage as paginas, p.idpublicacion, p.idusuario, p.tipo_publicacion, p.fecha_vencimiento, p.permitir_preguntas,p.permitir_envio, p.idrubro, p.stock,p.descripcion,p.precio 
from DALE_SA.publicacion p,DALE_SA.visibilidad vis where p.idvisibilidad=vis.idvisibilidad and p.estado=@idestado and p.idusuario != @idusuario and p.descripcion like '%'+@desc+'%' and p.idrubro in (select * from ids_to_tabla(@list_id)) and  p.idpublicacion NOT IN 
(Select TOP (@PreviousPageOffSet) pp.idpublicacion  from DALE_SA.publicacion pp,DALE_SA.visibilidad vis 
where pp.idvisibilidad=vis.idvisibilidad and pp.estado=@idestado and pp.idusuario != @idusuario and p.descripcion like '%'+@desc+'%' and p.idrubro in (select * from ids_to_tabla(@list_id)) ORDER BY vis.codigo, pp.idpublicacion asc)

ORDER BY vis.codigo asc


return @totalpage
END


GO
USE [GD1C2016]
GO

/****** Object:  StoredProcedure [DALE_SA].[pr_preguntas]    Script Date: 12/06/2016 16:16:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [DALE_SA].[pr_preguntas](@idpublicacion varchar(255)) AS
DECLARE @retorno numeric(12)

begin
 Select pre.pregunta,pre.respuesta from DALE_SA.preguntas  pre WHERE pre.idpublicacion=@idpublicacion 
END
GO



/*			FIN							*/
/*			FIN							*/
/*			CODIGO ABM_PUBLICACION		*/


------------------------------------------------------------------------------------------------

/*			CODIGO PARA ABM_USUARIO		*/
/*			INICIO						*/
/*			INICIO						*/

CREATE FUNCTION [DALE_SA].fcEsNuloOVacio 
(@temp as varchar(255))
Returns Bit
AS
BEGIN
  --primero hago que si es nulo, le ponga el texto ''
  --dps le saco todos los esapcios en blanco a izquierda
  --comparo si su longitud es > 0
  --entonces el string no estaba vacio.
  --
  --Ejemplo... Select DALE_SA.fcEsNuloOVacio('  d  ')
 if ((LEN(LTRIM(ISNULL(@temp,''))))>0)
 BEGIN
	--PRINT 'STRING OK'
	RETURN 0
END
else
BEGIN
	--PRINT 'ES NULO O ES ESPACIO EN BLANCO'
	RETURN 1
END
RETURN 1	--por default
END
GO

USE [GD1C2016]
GO

/****** Object:  UserDefinedFunction [DALE_SA].[intlist_to_tbl2]    Script Date: 12/06/2016 8:39:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [DALE_SA].[ids_to_tabla]
(@list nvarchar(MAX))
RETURNS @tbl TABLE (number int NOT NULL) 
AS
BEGIN
   DECLARE @pos        int,
           @nextpos    int,
           @valuelen   int

  if (LEN(@list) >0)
  begin
   SELECT @pos = 0, @nextpos = 1

   WHILE @nextpos > 0
   BEGIN
      SELECT @nextpos = charindex(',', @list, @pos + 1)
      SELECT @valuelen = CASE WHEN @nextpos > 0
                              THEN @nextpos
                              ELSE len(@list) + 1
                         END - @pos - 1
      INSERT @tbl (number)
         VALUES (convert(int, substring(@list, @pos + 1, @valuelen)))
      SELECT @pos = @nextpos
   END
   end
   else
   begin
   insert @tbl select idrubro from DALE_SA.rubro
   end 
   RETURN
END
GO



create view [DALE_SA].vw_usuarioCliente AS
(
	select t1.idusuario, t1.username, t1.estado, t1.mail, t2.nombre, t2.apellido, t2.dni, t2.tipo_documento,  t1.fechacreacion, t1.telefono,  t1.intentosfallidos, t2.fecha_nacimiento, t3.calle, t3.codigopostal, t3.depto, t3.numero, t3.piso 
	from DALE_SA.usuario t1, DALE_SA.data_cliente t2, DALE_SA.direccion t3
	where t1.idusuario = t2.idusuario AND t1.iddireccion = t3.idDireccion
)
go



create procedure [DALE_SA].prConsultaUsuarioCliente (@nombre as varchar(255), @apellido as varchar(255), @email as varchar(255), @dni as varchar(255))
AS
BEGIN
	SELECT  *  FROM  DALE_SA.vw_usuarioCliente t1
	WHERE (
	((t1.nombre LIKE '%' + @nombre + '%') OR (DALE_SA.fcEsNuloOVacio(@nombre)=1))
	AND
	((t1.apellido LIKE '%' + @apellido + '%') OR (DALE_SA.fcEsNuloOVacio(@apellido)=1))
	AND
	((t1.dni = cast (@dni as int) ) OR (DALE_SA.fcEsNuloOVacio(@dni)=1))
	AND
	((t1.mail LIKE '%' + @email + '%') OR (DALE_SA.fcEsNuloOVacio(@email)=1))
	)
END
GO


create view [DALE_SA].vw_usuarioEmpresa AS
(
	select t1.idusuario, t1.username, t1.estado, t1.mail, t2.razon_social, t2.cuit, t2.rubroempresa, t2.contacto, t1.fechacreacion, t1.telefono,  t1.intentosfallidos, t2.ciudad, t3.calle, t3.codigopostal, t3.depto, t3.numero, t3.piso 
	from DALE_SA.usuario t1, DALE_SA.data_empresa t2, DALE_SA.direccion t3
	where t1.idusuario = t2.idusuario AND t1.iddireccion = t3.idDireccion
)
go



create procedure [DALE_SA].prConsultaUsuarioEmpresa (@razonSocial as varchar(255), @email as varchar(255), @cuit as varchar(255))
AS
BEGIN
	SELECT  *  FROM  DALE_SA.vw_usuarioEmpresa t1
	WHERE (
	((t1.razon_social LIKE '%' + @razonSocial + '%') OR (DALE_SA.fcEsNuloOVacio(@razonSocial)=1))
	AND
	((t1.cuit = @cuit ) OR (DALE_SA.fcEsNuloOVacio(@cuit)=1))
	AND
	((t1.mail LIKE '%' + @email + '%') OR (DALE_SA.fcEsNuloOVacio(@email)=1))
	)
END
GO


CREATE PROCEDURE [DALE_SA].prCambiarPWD (@IdUsuario as varchar(255), @newPWD as varchar(255))
AS
BEGIN
	UPDATE [DALE_SA].usuario 
	SET password = @newPWD
	WHERE idusuario = cast(@IdUsuario as bigint)
	
	--devuelve un 1 de ok
	select 1 as columna1
END
GO



CREATE PROCEDURE [DALE_SA].prCrearUsuarioCliente (@usernam as nvarchar(255), @pwd as nvarchar(255), @nombre as nvarchar(255), @apellido as nvarchar(255), @tipoDNI as nvarchar(255), @dni as nvarchar(255), @email as nvarchar(255), @telefono as nvarchar(255), @codPostal as nvarchar(255), @dirCalle as nvarchar(255), @numCalle as nvarchar(255), @pisoCalle as nvarchar(255), @dptoCalle as nvarchar(255), @fechaNac as nvarchar(255), @fechaAlta as nvarchar(255) )
AS
BEGIN
	BEGIN TRANSACTION T1

		DECLARE @temp as numeric(18,0)
		DECLARE @temp2 as numeric(18,0)

		INSERT INTO [DALE_SA].direccion (codigopostal, depto, piso, numero, calle)
				values (@codPostal, @dptoCalle, cast(@pisoCalle as numeric(18,0)), cast(@numCalle as numeric(18,0)), @dirCalle)
		
		SET @temp = CAST( scope_identity() AS numeric(18,0) )


		INSERT INTO [DALE_SA].usuario (username, password, mail, estado, fechacreacion, telefono, intentosfallidos, iddireccion)
				values ( Rtrim(Ltrim(@usernam)), @pwd, @email, 1, CONVERT(DateTime,@fechaAlta,121), @telefono, 0, @temp)

		SET @temp2 = CAST( scope_identity() AS numeric(18,0) )


		insert into DALE_SA.data_cliente(idusuario,apellido,dni,fecha_nacimiento,nombre,tipo_documento)
				values(@temp2, @apellido, cast(@dni as numeric(18,0)), CONVERT(DateTime,@fechaNac,121), @nombre, cast(@tipoDNI as tinyint))
	
		
		INSERT INTO [DALE_SA].[rol_usuario]
           ([idrol]
           ,[idusuario])
    	SELECT idrol,@temp2 from [DALE_SA].[rol] where nombre IN('CLIENTE')
		

		select 1 AS resultado
	COMMIT TRANSACTION T1
END
GO

--EXEC DALE_SA.prCrearUsuarioCliente 'prueba', 'unapwd', 'nombre', 'apellido', '1', '231', 'asd@pepe.com', '23131', '432', 'callenumeroTAL', '221', '21', '131', N'2016/05/01 00:00:00', N'2016/05/01 00:00:00'
--select count(t1.username) from DALE_SA.usuario t1 where t1.username = 'DCAPPA'
--  select count(t1.dni) from DALE_SA.data_cliente t1 where t1.dni = 69062732


CREATE PROCEDURE [DALE_SA].prModificarUsuarioCliente (@idUsuario as nvarchar(255), @nombre as nvarchar(255), @apellido as nvarchar(255), @dni as nvarchar(255), @email as nvarchar(255), @telefono as nvarchar(255), @codPostal as nvarchar(255), @dirCalle as nvarchar(255), @numCalle as nvarchar(255), @pisoCalle as nvarchar(255), @dptoCalle as nvarchar(255), @fechaNac as nvarchar(255) )
AS
BEGIN
	BEGIN TRANSACTION T1

		--para esta primera etapa no se puede modificar PWD
		--tampoco fecha de creacion
		--tampoco nombre de usuario..
		-- tampoco tipoDNI

		DECLARE @temp as numeric(18,0)
		SET @temp = ( select t1.iddireccion from DALE_SA.usuario t1 where t1.idusuario = cast(@idUsuario as numeric(18,0)) )
		

		UPDATE DALE_SA.direccion
		SET 
			codigopostal = @codPostal
			, depto = @dptoCalle
			, piso = cast(@pisoCalle as numeric(18,0))
			, numero = cast(@numCalle as numeric(18,0))
			, calle = @dirCalle
		WHERE idDireccion = @temp


		UPDATE DALE_SA.data_cliente
		SET
			fecha_nacimiento = CONVERT(DateTime,@fechaNac,121)
			, nombre = @nombre
			, apellido = @apellido
			, dni = cast(@dni as numeric(18,0))
		WHERE idusuario = cast(@idUsuario as numeric(18,0))


		UPDATE DALE_SA.usuario
		SET
			mail = @email
			, telefono = @telefono
		WHERE idusuario = cast(@idUsuario as numeric(18,0))

	
		select 1 AS resultado
	COMMIT TRANSACTION T1
END
GO

--EXEC DALE_SA.prModificarUsuarioCliente '1', 'nombre', 'apellido', '231', 'asd@pepe.com', '23131', '432', 'callenumeroTAL', '221', '21', '131', N'2016/05/01 00:00:00'


CREATE PROCEDURE [DALE_SA].prCrearUsuarioEmpresa (@usernam as nvarchar(255), @pwd as nvarchar(255), @cuit as nvarchar(255), @razon_Social as nvarchar(255), @rubroEmpresa as nvarchar(255), @ciudad as nvarchar(255), @email as nvarchar(255), @telefono as nvarchar(255), @codPostal as nvarchar(255), @dirCalle as nvarchar(255), @numCalle as nvarchar(255), @pisoCalle as nvarchar(255), @dptoCalle as nvarchar(255), @contacto as nvarchar(255), @fechaAlta as nvarchar(255) )
AS
BEGIN
	BEGIN TRANSACTION T1

		DECLARE @temp as numeric(18,0)
		DECLARE @temp2 as numeric(18,0)

		INSERT INTO [DALE_SA].direccion (codigopostal, depto, piso, numero, calle)
				values (@codPostal, @dptoCalle, cast(@pisoCalle as numeric(18,0)), cast(@numCalle as numeric(18,0)), @dirCalle)
		
		SET @temp = CAST( scope_identity() AS numeric(18,0) )


		INSERT INTO [DALE_SA].usuario (username, password, mail, estado, fechacreacion, telefono, intentosfallidos, iddireccion)
				values ( Rtrim(Ltrim(@usernam)), @pwd, @email, 1, CONVERT(DateTime,@fechaAlta,121), @telefono, 0, @temp)

		SET @temp2 = CAST( scope_identity() AS numeric(18,0) )

		--De aca para atras es igual a [DALE_SA].prCrearUsuarioCliente
		insert into DALE_SA.data_empresa(idusuario, cuit, rubroempresa, ciudad, contacto, razon_social)
				values(@temp2, Rtrim(Ltrim(@cuit)) , @rubroEmpresa, @ciudad, @contacto, Rtrim(Ltrim(@razon_Social)) )
	
		
		INSERT INTO [DALE_SA].[rol_usuario]
           ([idrol]
           ,[idusuario])
    	SELECT idrol,@temp2 from [DALE_SA].[rol] where nombre IN('EMPRESA')

		
		select 1 AS resultado
	COMMIT TRANSACTION T1
END
GO


CREATE PROCEDURE [DALE_SA].prModificarUsuarioEmpresa (@idUsuario as nvarchar(255), @cuit as nvarchar(255), @razon_Social as nvarchar(255), @rubroEmpresa as nvarchar(255), @ciudad as nvarchar(255), @email as nvarchar(255), @telefono as nvarchar(255), @codPostal as nvarchar(255), @dirCalle as nvarchar(255), @numCalle as nvarchar(255), @pisoCalle as nvarchar(255), @dptoCalle as nvarchar(255), @contacto as nvarchar(255) )
AS
BEGIN
	BEGIN TRANSACTION T1

		--para esta primera etapa no se puede modificar PWD
		--tampoco fecha de creacion
		--tampoco nombre de usuario..

		DECLARE @temp as numeric(18,0)
		SET @temp = ( select t1.iddireccion from DALE_SA.usuario t1 where t1.idusuario = cast(@idUsuario as numeric(18,0)) )
		

		UPDATE DALE_SA.direccion
		SET 
			codigopostal = @codPostal
			, depto = @dptoCalle
			, piso = cast(@pisoCalle as numeric(18,0))
			, numero = cast(@numCalle as numeric(18,0))
			, calle = @dirCalle
		WHERE idDireccion = @temp


		UPDATE DALE_SA.data_empresa
		SET
			cuit = Rtrim(Ltrim(@cuit))
			, rubroempresa = @rubroEmpresa
			, ciudad = @ciudad
			, contacto = @contacto
			, razon_social = Rtrim(Ltrim(@razon_Social))
		WHERE idusuario = cast(@idUsuario as numeric(18,0))


		UPDATE DALE_SA.usuario
		SET
			mail = @email
			, telefono = @telefono
		WHERE idusuario = cast(@idUsuario as numeric(18,0))
	
		
		select 1 AS resultado
	COMMIT TRANSACTION T1
END
GO


/*			FIN							*/
/*			FIN							*/
/*			CODIGO ABM_USUARIO			*/


------------------------------------------------------------------------------------------------


------------------------------------------------------------------------------------------------

/*		CODIGO HISTORIAL_CLIENTE		*/
/*			INICIO						*/
/*			INICIO						*/

create function [DALE_SA].fcEstaCompraFueCalificada ( @idcompra as Numeric(18,0) )
RETURNS bit
AS
BEGIN
	if		(
			exists (select *
				from DALE_SA.calificacion t1
				where t1.idcompra=@idcompra)
			)
	begin
		return 1
	end
	else
	begin
		return 0
	end
	--por si las dudas..
	return 0
END
GO

CREATE FUNCTION [DALE_SA].view_CompraInmediata ( @idUsuario Numeric(18,0) )
RETURNS TABLE
AS
RETURN
(
	--recibe el id usuario
	-- este es para las compras directas
	select t1.idpublicacion, t1.descripcion, t1.tipo_publicacion, t4.descripcion_corta AS RUBRO, t2.username as PUBLICADOR, t3.cantidad, t3.fecha as FECHA,
	case		
        when [DALE_SA].fcEstaCompraFueCalificada(t3.idcompra) = 1 then 'CALIFICADA'
        when [DALE_SA].fcEstaCompraFueCalificada(t3.idcompra) = 0 then 'NO'
        else 'UNDEFINED'
    end AS CALIFICADA,
	t3.idcompra

	from DALE_SA.publicacion t1, DALE_SA.usuario t2, DALE_SA.compra t3, DALE_SA.rubro t4
	where 
	(t3.idpublicacion = t1.idpublicacion) AND
	(t2.idusuario = t1.idusuario) AND
	(t4.idrubro = t1.idrubro) AND
	(t3.idusuario = @idUsuario) AND
	(t1.tipo_publicacion = 'Compra Inmediata')
)
GO



CREATE FUNCTION [DALE_SA].view_CompraSubasta ( @idUsuario Numeric(18,0) )
RETURNS TABLE
AS
RETURN
(
	(
	--recibe el id usuario
	--subastas...
	select t1.idpublicacion, t1.descripcion, t1.tipo_publicacion, t4.descripcion_corta AS RUBRO, t2.username as PUBLICADOR, t3.monto AS MONTO_OFERTADO, t3.fecha as FECHA, 
	case
        when t3.activa = 1 then 'SI'
        when t3.activa = 0 then 'NO'
        else 'UNDEFINED'
    end AS OFERTA_GANADORA,
	case
        when t3.envio = 1 then 'SI'
        when t3.envio = 0 then 'NO'
        else 'UNDEFINED'
    end AS ENVIO,
	t5.descripcion AS ESTADO , 
	case	
		-- queda verificar si el estado =1 es subasta finalizada...
		when t1.estado != 1 then 'SUBASTA ACTIVA'	
        --when [DALE_SA].fcEstaCompraFueCalificada(t6.idcompra) = 1 then 'CALIFICADA'
        --when [DALE_SA].fcEstaCompraFueCalificada(t6.idcompra) = 0 then 'NO'
        --)
		else 'UNDEFINED'
		
    end AS CALIFICADA/*,
	null as DEBUG*/
	
	from DALE_SA.publicacion t1, DALE_SA.usuario t2, DALE_SA.oferta t3, DALE_SA.rubro t4, DALE_SA.estado_publicacion t5, DALE_SA.compra t6
	 where 
	(t3.idpublicacion = t1.idpublicacion) AND
	(t2.idusuario = t1.idusuario) AND
	(t4.idrubro = t1.idrubro) AND
	(t3.idusuario = @idUsuario) AND
	(t5.idestado_publicacion = t1.estado) AND
	(t1.tipo_publicacion = 'Subasta') AND
	(t1.estado != 1)
	)
	UNION
	(
	--recibe el id usuario
	--subastas...
	select t1.idpublicacion, t1.descripcion, t1.tipo_publicacion, t4.descripcion_corta AS RUBRO, t2.username as PUBLICADOR, t3.monto AS MONTO_OFERTADO, t3.fecha as FECHA, 
	case
        when t3.activa = 1 then 'SI'
        when t3.activa = 0 then 'NO'
        else 'UNDEFINED'
    end AS OFERTA_GANADORA,
	case
        when t3.envio = 1 then 'SI'
        when t3.envio = 0 then 'NO'
        else 'UNDEFINED'
    end AS ENVIO,
	t5.descripcion AS ESTADO , 
	case	
		-- queda verificar si el estado =1 es subasta finalizada...
		--when t1.estado != 1 then 'SUBASTA ACTIVA'	
        when [DALE_SA].fcEstaCompraFueCalificada(t6.idcompra) = 1 then 'CALIFICADA'
        when [DALE_SA].fcEstaCompraFueCalificada(t6.idcompra) = 0 then 'NO'
        --)
		else 'UNDEFINED'
		
    end AS CALIFICADA /*,
	t6.idcompra AS DEBUG*/
	
	from DALE_SA.publicacion t1, DALE_SA.usuario t2, DALE_SA.oferta t3, DALE_SA.rubro t4, DALE_SA.estado_publicacion t5, DALE_SA.compra t6
	 where 
	(t3.idpublicacion = t1.idpublicacion) AND
	(t2.idusuario = t1.idusuario) AND
	(t4.idrubro = t1.idrubro) AND
	(t3.idusuario = @idUsuario) AND
	(t5.idestado_publicacion = t1.estado) AND
	(t1.tipo_publicacion = 'Subasta') AND
	(t1.estado = 1) AND
	(t6.idpublicacion = t1.idpublicacion and t6.idusuario = @idUsuario)
	)
	UNION
		(
	--recibe el id usuario
	--subastas...
	select t1.idpublicacion, t1.descripcion, t1.tipo_publicacion, t4.descripcion_corta AS RUBRO, t2.username as PUBLICADOR, t3.monto AS MONTO_OFERTADO, t3.fecha as FECHA, 
	case
        when t3.activa = 1 then 'SI'
        when t3.activa = 0 then 'NO'
        else 'UNDEFINED'
    end AS OFERTA_GANADORA,
	case
        when t3.envio = 1 then 'SI'
        when t3.envio = 0 then 'NO'
        else 'UNDEFINED'
    end AS ENVIO,
	t5.descripcion AS ESTADO , 
	case	
		-- queda verificar si el estado =1 es subasta finalizada...
		when t1.estado = 1 then 'NO GANADA'	
        --when [DALE_SA].fcEstaCompraFueCalificada(t6.idcompra) = 1 then 'CALIFICADA'
        --when [DALE_SA].fcEstaCompraFueCalificada(t6.idcompra) = 0 then 'NO'
        --)
		else 'UNDEFINED'
		
    end AS CALIFICADA /*,
	t6.idcompra AS DEBUG*/
	
	from DALE_SA.publicacion t1, DALE_SA.usuario t2, DALE_SA.oferta t3, DALE_SA.rubro t4, DALE_SA.estado_publicacion t5, DALE_SA.compra t6
	 where 
	(t3.idpublicacion = t1.idpublicacion) AND
	(t2.idusuario = t1.idusuario) AND
	(t4.idrubro = t1.idrubro) AND
	(t3.idusuario = @idUsuario) AND
	(t5.idestado_publicacion = t1.estado) AND
	(t1.tipo_publicacion = 'Subasta') AND
	(t1.estado = 1)
	AND
	(t6.idpublicacion = t1.idpublicacion and t6.idusuario != @idUsuario)
	)
)
GO

create procedure [DALE_SA].[pr_CalificarCompraInmediata] (@idpublicacion varchar(255), @idcompra varchar(255), @cantidadEstrellas varchar(255), @desc varchar(255))
AS
BEGIN
	DECLARE @comprador as numeric(18,0)
	SET @comprador = 
	(
		select t1.idusuario from DALE_SA.compra t1 where t1.idcompra = cast(@idcompra as numeric(18,0)) 
	)
	DECLARE @vendedor as numeric(18,0)
	SET @vendedor = 
	(
		select t1.idusuario from DALE_SA.publicacion t1 where t1.idpublicacion = cast(@idpublicacion as numeric(18,0)) 
	)


	INSERT INTO [DALE_SA].[calificacion]
           ([idusuariovendedor]
           ,[idusuariocomprador]
           ,[idcompra]
           ,[cantidad_estrella]
           ,[descripcion])
     VALUES
           (@vendedor
           ,@comprador
           , cast(@idcompra as numeric(18,0))
           , cast(@cantidadEstrellas as numeric(18,0))
           , @desc
		   )
	select @comprador
END
GO

create procedure [DALE_SA].[pr_CalificarSubasta] (@idpublicacion varchar(255), @idcompra varchar(255), @cantidadEstrellas varchar(255), @desc varchar(255))
AS
BEGIN
	DECLARE @comprador as numeric(18,0)
	SET @comprador = 
	(
		select t1.idusuario from DALE_SA.compra t1 where t1.idpublicacion = cast(@idpublicacion as numeric(18,0)) 
	)
	DECLARE @vendedor as numeric(18,0)
	SET @vendedor = 
	(
		select t1.idusuario from DALE_SA.publicacion t1 where t1.idpublicacion = cast(@idpublicacion as numeric(18,0)) 
	)
	DECLARE @idCompraPosta as numeric(18,0)
	SET @idCompraPosta = 
	(
		select t1.idcompra from DALE_SA.compra t1 where t1.idpublicacion = cast(@idpublicacion as numeric(18,0)) 
	)

	INSERT INTO [DALE_SA].[calificacion]
           ([idusuariovendedor]
           ,[idusuariocomprador]
           ,[idcompra]
           ,[cantidad_estrella]
           ,[descripcion])
     VALUES
           (@vendedor
           ,@comprador
           , cast(@idCompraPosta as numeric(18,0))
           , cast(@cantidadEstrellas as numeric(18,0))
           , @desc
		   )
	select @comprador
END
GO


/*
select t1.*
from ( select * from DALE_SA.view_CompraSubasta(1) ) t1 , DALE_SA.calificacion t2
where
t2.idcompra in
(
select top 5 * from DALE_SA.compra com where com.idusuario = 1 order by fecha desc
)
and t1.idpublicacion in 
(
select top 5 com.idpublicacion from DALE_SA.compra com where com.idusuario = 1 order by fecha desc
)


select *
from DALE_SA.view_CompraSubasta(1) t1
INNER JOIN DALE_SA.calificacion t2
ON 
t2.idcompra in
(
select top 5 * from DALE_SA.compra com where com.idusuario = 1 order by fecha desc
)
and t1.idpublicacion in 
(
select top 5 com.idpublicacion from DALE_SA.compra com where com.idusuario = 1 order by fecha desc
)

select *
from DALE_SA.view_CompraSubasta(1) t1
where t1.CALIFICADA = 'NO'

*/
--select  * from DALE_SA.view_CompraSubasta(98) 


/*			FIN							*/
/*			FIN							*/
/*		CODIGO HISTORIAL_CLIENTE		*/

------------------------------------------------------------------------------------------------




CREATE PROCEDURE [DALE_SA].[pr_factura_compra](@fecha datetime,@monto_compra numeric(18,2),@cantidad numeric(18,0),@monto_envio numeric(18,2)) AS           
DECLARE @idfactura numeric(18)
DECLARE @nrofac numeric(18)
BEGIN

exec @nrofac= [DALE_SA].[pr_nro_factura]


INSERT INTO [DALE_SA].[factura]
           ([total]
           ,[fecha]
           ,[numero])
     VALUES
           (@cantidad*@monto_compra+@monto_envio
           ,@fecha
           ,@nrofac)
set @idfactura=@@IDENTITY

INSERT INTO [DALE_SA].[item_factura]
           ([cantidad]
           ,[monto]
           ,[idfactura])
     VALUES
           (@cantidad
           ,@monto_compra*@cantidad
           ,@idfactura)

if (@monto_envio!=0)
BEGIN
	INSERT INTO [DALE_SA].[item_factura]
           ([cantidad]
           ,[monto]
           ,[idfactura])
     VALUES
           (1
           ,@monto_envio
           ,@idfactura)
END
return @idfactura

END

GO
 
CREATE PROCEDURE [DALE_SA].[pr_comprar]( @cantidad numeric(18,0),@idusuario numeric(18,0),@idpublicacion numeric(18,0),
@fecha nvarchar(255),@envio bit,@precio numeric(18,2)) AS           
DECLARE @idcompra numeric(12)
DECLARE @idfactura numeric(12)
BEGIN

INSERT INTO [DALE_SA].[compra]
           ([cantidad]
           ,[fecha]
           ,[idpublicacion]
           ,[idusuario])
     VALUES
           (@cantidad
           ,@fecha
           ,@idpublicacion
           ,@idusuario)

set @idcompra=@@IDENTITY

declare @precio_envio numeric(18,2)
declare @porc_venta numeric(18,2)
declare @monto numeric(18,2)
declare @idvisibilidad numeric(18,2)
select @idvisibilidad=pub.idvisibilidad from DALE_SA.publicacion pub where pub.idpublicacion=@idpublicacion
select  @precio_envio=vis.precio_envio,@porc_venta=vis.porcentaje_venta from DALE_SA.visibilidad vis where vis.idvisibilidad=@idvisibilidad

set @monto=@precio*@porc_venta

if (@envio=0) set @precio_envio=0

EXEC @idfactura=[DALE_SA].[pr_factura_compra] @fecha,@monto,@cantidad,@precio_envio
update DALE_SA.compra set DALE_SA.compra.idfactura=@idfactura where DALE_SA.compra.idcompra=@idcompra
update DALE_SA.publicacion set DALE_SA.publicacion.stock=(DALE_SA.publicacion.stock - @cantidad ) where DALE_SA.publicacion.idpublicacion=@idpublicacion 

END


GO

CREATE PROCEDURE [DALE_SA].[pr_ofertar](@idusuario numeric(18,0),@idpublicacion numeric(18,0),
@fecha nvarchar(255),@envio bit,@monto numeric(18,2)) AS           
BEGIN
declare @idpubaux numeric(18,2)
update DALE_SA.oferta set activa=0 where idpublicacion=@idpublicacion and activa=1
update DALE_SA.publicacion set precio=@monto where idpublicacion=@idpublicacion


INSERT INTO [DALE_SA].[oferta]
           ([idpublicacion]
           ,[idusuario]
           ,[fecha]
           ,[monto]
           ,[activa]
		   ,[envio])
     
     VALUES
           (@idpublicacion
           ,@idusuario
           ,@fecha
           ,@monto
           ,1
		   ,@envio)

END

GO


ALTER TABLE dale_sa.compra
DROP COLUMN numeroCalificacion
go


IF object_id('[DALE_SA].[hashear]', 'FN') IS NOT NULL
DROP FUNCTION [DALE_SA].hashear
GO

CREATE FUNCTION [DALE_SA].hashear 
(@temp as nvarchar(255))
Returns nvarchar(255)
AS
BEGIN
RETURN HASHBYTES('SHA2_256',@temp)
END
go



/*Hasheo las passwords*/
/*
UPDATE DALE_SA.usuario
SET password = [DALE_SA].hashear(password)
*/



--/////////////////////////////////////////////


CREATE PROCEDURE [DALE_SA].[pr_comprar_subasta]( @cantidad numeric(18,0),@idusuario numeric(18,0),@idpublicacion numeric(18,0),
@fecha nvarchar(255),@envio bit,@precio numeric(18,2)) AS           
DECLARE @idcompra numeric(12)
DECLARE @idfactura numeric(12)
BEGIN

INSERT INTO [DALE_SA].[compra]
           ([cantidad]
           ,[fecha]
           ,[idpublicacion]
           ,[idusuario])
     VALUES
           (@cantidad
           ,@fecha
           ,@idpublicacion
           ,@idusuario)

set @idcompra=@@IDENTITY

declare @precio_envio numeric(18,2)
declare @porc_venta numeric(18,2)
declare @monto numeric(18,2)
declare @idvisibilidad numeric(18,2)
select @idvisibilidad=pub.idvisibilidad from DALE_SA.publicacion pub where pub.idpublicacion=@idpublicacion
select  @precio_envio=vis.precio_envio,@porc_venta=vis.porcentaje_venta from DALE_SA.visibilidad vis where vis.idvisibilidad=@idvisibilidad

set @monto=@precio*@porc_venta

if (@envio=0) set @precio_envio=0

EXEC @idfactura=[DALE_SA].[pr_factura_compra] @fecha,@monto,@cantidad,@precio_envio
update DALE_SA.compra set DALE_SA.compra.idfactura=@idfactura where DALE_SA.compra.idcompra=@idcompra
update DALE_SA.publicacion set DALE_SA.publicacion.stock=(DALE_SA.publicacion.stock - 1 ) where DALE_SA.publicacion.idpublicacion=@idpublicacion 
END
GO

/*		// modifico el trigger para que funcione cuando hay mas de una subasta
CREATE TRIGGER [DALE_SA].[tr_factura_subasta_finalizada] on [DALE_SA].[publicacion] 
AFTER UPDATE AS
declare @idestado numeric(18)
declare @idpublicacion numeric(18)
declare @valorfacturacion numeric(18,2)
declare @idusuario numeric(18)
declare @fecha datetime
declare @envio bit
BEGIN
SELECT @idestado=ep.idestado_publicacion from DALE_SA.estado_publicacion ep where ep.descripcion='Finalizada'
SELECT @idpublicacion=idpublicacion,@fecha=fecha_vencimiento from inserted where estado=@idestado and tipo_publicacion='Subasta' 
if (@idpublicacion IS NOT NULL)
BEGIN
select @valorfacturacion=o.monto,@envio=o.envio,@idusuario=o.idusuario from DALE_SA.oferta o where o.idpublicacion=@idpublicacion and o.activa=1
if (@idusuario IS NOT NULL)
begin
exec DALE_SA.pr_comprar_subasta 1,@idusuario,@idpublicacion,@fecha,@envio,@valorfacturacion
end
END
END
GO
*/

CREATE TRIGGER [DALE_SA].[tr_factura_subasta_finalizada] on [DALE_SA].[publicacion] 
AFTER UPDATE AS
declare @idestado numeric(18)
declare @idpublicacion numeric(18)
declare @valorfacturacion numeric(18,2)
declare @idusuario numeric(18)
declare @fecha datetime
declare @envio bit
BEGIN
	SELECT @idestado=ep.idestado_publicacion from DALE_SA.estado_publicacion ep where ep.descripcion='Finalizada'
	SELECT @idpublicacion=idpublicacion,@fecha=fecha_vencimiento from inserted where estado=@idestado and tipo_publicacion='Subasta' 
	--nos fijamos si al menos 1 subasta fue la que cambio...
	if (@idpublicacion IS NOT NULL)
	BEGIN

		--creo el cursor
		DECLARE cSubastaFinalizada CURSOR FOR
		(
			select o.idusuario, t2.idpublicacion, t2.fecha_vencimiento, o.envio, o.monto from
			DALE_SA.oferta o
			, inserted t2
			where 
			(
			t2.estado=@idestado and t2.tipo_publicacion='Subasta' 
			and o.idpublicacion=t2.idpublicacion and o.activa=1
			)
		)

		OPEN cSubastaFinalizada

		FETCH cSubastaFinalizada INTO    @idusuario, @idpublicacion, @fecha, 
			@envio, @valorfacturacion

		WHILE (@@FETCH_STATUS = 0 )
		BEGIN

			exec DALE_SA.pr_comprar_subasta 1,@idusuario,@idpublicacion,@fecha,@envio,@valorfacturacion

			
			-- Lectura de la siguiente fila del cursor
			FETCH cSubastaFinalizada INTO    @idusuario, @idpublicacion, @fecha, 
			@envio, @valorfacturacion

		END
		-- Cierre del cursor
		CLOSE cSubastaFinalizada
		-- Liberar los recursos
		DEALLOCATE cSubastaFinalizada


		
	END
END
GO


CREATE TRIGGER [DALE_SA].[tr_publicacion_stock_finaliza] on [DALE_SA].[publicacion] 
AFTER UPDATE AS
BEGIN
UPDATE DALE_SA.publicacion set estado=(select idestado_publicacion from DALE_SA.estado_publicacion where estado_publicacion.descripcion='Finalizada')
WHERE idpublicacion= (SELECT idpublicacion from inserted where stock=0 and tipo_publicacion = 'Compra Inmediata')
END
GO

------------------------------------------------------------------------------------------------

/*		CODIGO FACTURAS_VENDEDOR		*/
/*			INICIO						*/
/*			INICIO						*/

CREATE VIEW [DALE_SA].[vw_facturasAlVendedor]
AS
SELECT DISTINCT idfactura, total, fecha, VENDEDOR
FROM            (SELECT        t2.idfactura, t2.total, t2.fecha, t2.numero, t3.username AS VENDEDOR
                          FROM            DALE_SA.publicacion AS t1 INNER JOIN
                                                    DALE_SA.factura AS t2 ON t1.idfactura = t2.idfactura INNER JOIN
                                                    DALE_SA.usuario AS t3 ON t1.idusuario = t3.idusuario
                          UNION
                          SELECT        t2.idfactura, t2.total, t2.fecha, t2.numero,
                                                       (SELECT        username
                                                         FROM            DALE_SA.usuario AS uss
                                                         WHERE        (idusuario = t3.idusuario)) AS VENDEDOR
                          FROM            DALE_SA.compra AS t1 INNER JOIN
                                                   DALE_SA.factura AS t2 ON t1.idfactura = t2.idfactura INNER JOIN
                                                   DALE_SA.publicacion AS t3 ON t1.idpublicacion = t3.idpublicacion) AS compritas

GO

create procedure [DALE_SA].prConsultarFacturasAVendedores (@username as varchar(255), @montoInicial as varchar(255), @montoFinal as varchar(255), @fechaInicial as varchar(255), @fechaFinal as varchar(255), @Start as int,@PageLimit as int)
AS
BEGIN
	select * from DALE_SA.vw_facturasAlVendedor t1
	WHERE (
	((t1.VENDEDOR LIKE '%' + @username + '%') OR (DALE_SA.fcEsNuloOVacio(@username)=1))
	AND
	((t1.total BETWEEN ( CAST(@montoInicial AS int) ) AND  ( CAST(@montoFinal AS int) )    ) OR (DALE_SA.fcEsNuloOVacio(@montoInicial)=1) OR (DALE_SA.fcEsNuloOVacio(@montoFinal)=1)  )
	AND
	((t1.fecha BETWEEN ( CONVERT(DateTime,@fechaInicial,121) ) AND  ( CONVERT(DateTime,@fechaFinal,121) )    ) OR (DALE_SA.fcEsNuloOVacio(@fechaInicial)=1) OR (DALE_SA.fcEsNuloOVacio(@fechaFinal)=1)  )
	)
	order by t1.idfactura
	OFFSET @Start ROW
	FETCH NEXT @PageLimit ROWS ONLY
END
GO

--exec DALE_SA.prConsultarFacturasAVendedores '3','1000','1100', '','', 0, 10

--select top 100 * from DALE_SA.vw_facturasAlVendedor

/*
--paginar con SQL 2012
CREATE PROCEDURE [DALE_SA].[prPaginarDefault]
@Start     INT=0, 
@PageLimit INT=10
AS
BEGIN
	--SELECT * FROM Person.Person
	--ORDER  BY LastName,FirstName
	select * from DALE_SA.vw_facturasAlVendedor t1
	order by t1.idfactura
	OFFSET @Start ROW
	FETCH NEXT @PageLimit ROWS ONLY
END
GO

EXEC DALE_SA.prPaginarDefault 0, 20
*/


CREATE PROCEDURE [DALE_SA].[prPaginar_view_CompraInmediata]
@userID	Numeric(18,0),
@Start     INT=0, 
@PageLimit INT=10
AS
BEGIN
	--SELECT * FROM Person.Person
	--ORDER  BY LastName,FirstName
	SELECT * FROM [DALE_SA].view_CompraInmediata(@userID) t1
	order by t1.idcompra
	OFFSET @Start ROW
	FETCH NEXT @PageLimit ROWS ONLY
END
GO

CREATE PROCEDURE [DALE_SA].[prPaginar_view_CompraSubasta]
@userID	Numeric(18,0),
@Start     INT=0, 
@PageLimit INT=10
AS
BEGIN
	--SELECT * FROM Person.Person
	--ORDER  BY LastName,FirstName
	SELECT * FROM [DALE_SA].view_CompraSubasta(@userID) t1
	order by t1.idpublicacion
	OFFSET @Start ROW
	FETCH NEXT @PageLimit ROWS ONLY
END
GO

CREATE PROCEDURE [DALE_SA].[ABMvisibilidad] (
	 @idvisibilidad AS Numeric(18,0),
	 @descripcion AS Nvarchar(255),
	 @porcentaje_venta  AS numeric(18,2),
	 @precio_publicacion AS numeric(18,2),
	 @precio_envio AS numeric(18,2),
	 @codigo AS numeric(18),
	 @estado AS bit,
	 @accion AS numeric(1))
AS
BEGIN
   DECLARE @aux numeric(18)
   set @aux=null
   select @aux=idvisibilidad from DALE_SA.visibilidad where descripcion=(Rtrim(Ltrim(@descripcion))) and estado=1
  IF ((@accion = 1) AND (@aux IS NULL)) BEGIN
  INSERT INTO DALE_SA.visibilidad (descripcion,porcentaje_venta,precio_publicacion,precio_envio,codigo,estado)
  values(Rtrim(Ltrim(@descripcion)),@porcentaje_venta,@precio_publicacion,@precio_envio,@codigo,1)
  return 1
  END
  else  BEGIN if (@accion = 1) return -1 END
  IF  ((@accion = 2) AND (@aux =@idvisibilidad))BEGIN
  UPDATE DALE_SA.visibilidad set descripcion=Rtrim(Ltrim(@descripcion)),
  porcentaje_venta=@porcentaje_venta,
  precio_publicacion=@precio_publicacion,
  precio_envio=@precio_envio,
  codigo=@codigo
  WHERE idvisibilidad=@idvisibilidad
  return 2
  END
  else begin if (@accion = 2) return -2 end
  
  IF (@accion=3) BEGIN
  UPDATE DALE_SA.visibilidad set estado=0
  WHERE idvisibilidad=@idvisibilidad
  END
  
  return 3
END

GO
/*			FIN							*/
/*			FIN							*/
/*		CODIGO FACTURAS_VENDEDOR		*/

------------------------------------------------------------------------------------------------

