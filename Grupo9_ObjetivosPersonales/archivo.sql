SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Service
-- -----------------------------------------------------

drop schema if exists `ready_bd`;

-- -----------------------------------------------------
-- Schema Service
-- -----------------------------------------------------

create schema if not exists `ready_bd` default character set utf8;
use `ready_bd`;

-- -----------------------------------------------------
-- Tablas hijas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Tabla `ready_bd`.`TipoTarea`
-- Las tareas se van a dividir inicialmente en 3 tipos: "Tarea de Planificación", "Tarea de Extensión", "tarea de Práctica".
-- -----------------------------------------------------

create table if not exists `ready_bd`.`TipoTarea`
(
`IdTipoTarea` int not null auto_increment,
`Tipo` varchar(100) not null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`IdTipoTarea`)
);

-- -----------------------------------------------------
-- Tabla `ready_bd`.`InicioTarea`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`InicioTarea`
(
`IdInicioTarea` int not null auto_increment,
`FechaInicio` date not null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`IdInicioTarea`)
);

-- -----------------------------------------------------
-- Tabla `ready_bd`.`FinTarea`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`FinTarea`
(
`IdFinTarea` int not null auto_increment,
`FechaFin` date not null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`IdFinTarea`)
);

-- -----------------------------------------------------
-- Tabla `ready_bd`.`TipoDoc`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`TipoDoc`
(
`IdTipoDoc` int not null auto_increment,
`Tipo` enum('DNI','LC','LE') not null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`IdTipoDoc`)
);

-- -----------------------------------------------------
-- Tabla `ready_bd`.`Pais`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`Pais`
(
`IdPais` int not null auto_increment,
`Nombre` varchar(30) not null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`IdPais`)
);

-- -----------------------------------------------------
-- Tabla `ready_bd`.`Ciudad`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`Ciudad`
(
`IdCiudad` int not null auto_increment,
`Nombre` varchar(30) not null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`IdCiudad`)
);

-- -----------------------------------------------------
-- Tabla `ready_bd`.`Telefono`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`Telefono`
(
`IdTelefono` int not null auto_increment,
`Numero` varchar(11) not null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`IdTelefono`)
);

-- -----------------------------------------------------
-- Tablas padres
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Tabla `ready_bd`.`Equipo`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`Equipo`
(
`IdEquipo` int not null auto_increment,
`Nombre` varchar(30) not null,
`Usuario_IdUsuario` int null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`IdEquipo`),
constraint `Equipo_Usuario`
	foreign key(`Usuario_IdUsuario`)
    references `ready_bd`.`Usuario`(`IdUsuario`)
    on delete no action
    on update no action
);

-- -----------------------------------------------------
-- Tabla `ready_bd`.`Integrantes`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`Integrantes`
(
`IdIntegrante` int not null auto_increment,
`Nombre` varchar(30) not null,
`Apellido` varchar(30) not null,
`Equipo_IdEquipo` int null,
`Tareas_IdTareas` int not null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`IdIntegrante`),
constraint `Integrante_Equipo`
	foreign key(`Equipo_IdEquipo`)
    references `ready_bd`.`Equipo`(`IdEquipo`)
    on delete no action
    on update no action,
constraint `Integrante_Tareas`
	foreign key(`Tareas_IdTareas`)
    references `ready_bd`.`Tareas`(`IdTareas`)
    on delete no action
    on update no action
);

-- -----------------------------------------------------
-- Tabla `ready_bd`.`Login`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`Login`
(
`IdLogin` int not null auto_increment,
`Fecha` date not null,
`Usuario_IdUsuario` int not null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`IdLogin`),
constraint `Login_Usuario`
	foreign key(`Usuario_IdUsuario`)
    references `ready_bd`.`Usuario`(`IdUsuario`)
    on delete no action
    on update no action
);

-- -----------------------------------------------------
-- Tabla `ready_bd`.`Usuario`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`Usuario`
(
`IdUsuario` int not null auto_increment,
`Nombre` varchar(30) not null,
`Apellido` varchar(30) not null,
`TipoDoc_IdTipoDoc` int not null,
`DNI` int(8) not null,
`Email` varchar(45) not null,
`Contraseña` varchar(45) not null,
`Pais_IdPais` int not null,
`Ciudad_IdCiudad` int not null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`IdUsuario`),
constraint `Usuario_TipoDoc`
	foreign key(`TipoDoc_IdTipoDoc`)
    references `ready_bd`.`TipoDoc`(`IdTipoDoc`)
    on delete no action
    on update no action,
constraint `Usuario_Pais`
	foreign key(`Pais_IdPais`)
    references `ready_bd`.`Pais`(`IdPais`)
    on delete no action
    on update no action,
constraint `Usuario_Ciudad`
	foreign key(`Ciudad_IdCiudad`)
    references `ready_bd`.`Ciudad`(`IdCiudad`)
    on delete no action
    on update no action
);

-- -----------------------------------------------------
-- Tabla `ready_bd`.`Tareas`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`Tareas`
(
`IdTareas` int not null auto_increment,
`Descripcion` varchar(180) not null,
`TipoTarea_IdTipoTarea` int not null,
`InicioTarea_IdInicioTarea` int not null,
`FinTarea_IdFinTarea` int not null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`IdTareas`),
constraint `Tareas_TipoTarea`
	foreign key(`TipoTarea_IdTipoTarea`)
    references `ready_bd`.`TipoTarea`(`IdTipoTarea`)
    on delete no action
    on update no action,
constraint `Tareas_InicioTarea`
	foreign key(`InicioTarea_IdInicioTarea`)
    references `ready_bd`.`InicioTarea`(`IdInicioTarea`)
    on delete no action
    on update no action,
constraint `Tareas_FinTarea`
	foreign key(`FinTarea_IdFinTarea`)
    references `ready_bd`.`FinTarea`(`IdFinTarea`)
    on delete no action
    on update no action
);

-- -----------------------------------------------------
-- Tablas compuestas
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Tabla `ready_bd`.`UsuarioTelefono`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`UsuarioTelefono`
(
`Usuario_IdUsuario` int not null,
`Telefono_IdTelefono` int not null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`Usuario_IdUsuario`, `Telefono_IdTelefono`),
constraint `UsuarioTelefono_Usuario`
	foreign key(`Usuario_IdUsuario`)
    references `ready_bd`.`Usuario`(`IdUsuario`)
    on delete no action
    on update no action,
constraint `UsuarioTelefono_Telefono`
	foreign key(`Telefono_IdTelefono`)
    references `ready_bd`.`Telefono`(`IdTelefono`)
    on delete no action
    on update no action
);

-- -----------------------------------------------------
-- Tabla `ready_bd`.`TareaUsuario`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`TareaUsuario`
(
`Tareas_IdTareas` int not null,
`Usuario_IdUsuario` int not null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`Tareas_IdTareas`, `Usuario_IdUsuario`),
constraint `TareaUsuario_Tareas`
	foreign key(`Tareas_IdTareas`)
    references `ready_bd`.`Tareas`(`IdTareas`)
    on delete no action
    on update no action,
constraint `TareaUsuario_Usuario`
	foreign key(`Usuario_IdUsuario`)
    references `ready_bd`.`Usuario`(`IdUsuario`)
    on delete no action
    on update no action
);

-- -----------------------------------------------------
-- Tabla `ready_bd`.`TareaEquipo`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`TareaEquipo`
(
`Tareas_IdTareas` int null,
`Equipo_IdEquipo` int null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`Tareas_IdTareas`, `Equipo_IdEquipo`),
constraint `TareaEquipo_Tareas`
	foreign key(`Tareas_IdTareas`)
    references `ready_bd`.`Tareas`(`IdTareas`)
    on delete no action
    on update no action,
constraint `TareaEquipo_Equipo`
	foreign key(`Equipo_IdEquipo`)
    references `ready_bd`.`Equipo`(`IdEquipo`)
    on delete no action
    on update no action
);

-- -----------------------------------------------------
-- Tabla `ready_bd`.`UsuarioEquipo`
-- -----------------------------------------------------

create table if not exists `ready_bd`.`UsuarioEquipo`
(
`Usuario_IdUsuario` int null,
`Equipo_IdEquipo` int null,
-- los campos FechaBaja fueron generados para crear una sentencia logica que permita "borrar los datos" sin eliminar los registros.
`FechaBaja` bit(1) not null,
primary key(`Usuario_IdUsuario`, `Equipo_IdEquipo`),
constraint `UsuarioEquipo_Usuario`
	foreign key(`Usuario_IdUsuario`)
    references `ready_bd`.`Usuario`(`IdUsuario`)
    on delete no action
    on update no action,
constraint `UsuarioEquipo_Equipo`
	foreign key(`Equipo_IdEquipo`)
    references `ready_bd`.`Equipo`(`IdEquipo`)
    on delete no action
    on update no action
);

-- ------------------------------------------------------------------------
-- 							Insertar registros
-- ------------------------------------------------------------------------
insert into TipoTarea (Tipo,FechaBaja) values ('Tarea de Planificación',1);
insert into TipoTarea (Tipo,FechaBaja) values ('Tarea de Extensión',1);
insert into TipoTarea (Tipo,FechaBaja) values ('Tarea de Práctica',1);
insert into InicioTarea (FechaInicio,FechaBaja) values ('2021/10/30',1);
insert into InicioTarea (FechaInicio,FechaBaja) values ('2021/10/30',1);
insert into InicioTarea (FechaInicio,FechaBaja) values ('2021/10/31',1);
insert into FinTarea (FechaFin,FechaBaja) values ('2021/10/31',1);
insert into FinTarea (FechaFin,FechaBaja) values ('2021/11/12',1);
insert into FinTarea (FechaFin,FechaBaja) values ('2021/11/12',1);
insert into TipoDoc (Tipo,FechaBaja) values ('DNI',1);
insert into TipoDoc (Tipo,FechaBaja) values ('LC',1);
insert into TipoDoc (Tipo,FechaBaja) values ('LE',1);
insert into Pais (Nombre,FechaBaja) values ('Argentina',1);
insert into Pais (Nombre,FechaBaja) values ('Brasil',1);
insert into Pais (Nombre,FechaBaja) values ('Uruguay',1);
insert into Ciudad (Nombre,FechaBaja) values ('Córdoba',1);
insert into Ciudad (Nombre,FechaBaja) values ('Curitiba',1);
insert into Ciudad (Nombre,FechaBaja) values ('Montevideo',1);
insert into Telefono (Numero,FechaBaja) values ('4229922',1);
insert into Telefono (Numero,FechaBaja) values ('3512312456',1);
insert into Equipo (Nombre,Usuario_IdUsuario,FechaBaja) values ('Seguridad',null,1);
insert into Equipo (Nombre,Usuario_IdUsuario,FechaBaja) values ('Operativo',1,1);
insert into Equipo (Nombre,Usuario_IdUsuario,FechaBaja) values ('Frente de Batalla',null,1);
insert into Integrantes (Nombre,Apellido,Equipo_IdEquipo,Tareas_IdTareas,FechaBaja) values ('Juan','Lopez','2','1',1);
insert into Integrantes (Nombre,Apellido,Equipo_IdEquipo,Tareas_IdTareas,FechaBaja) values ('Brenda','Escobar','1','2',1);
insert into Integrantes (Nombre,Apellido,Equipo_IdEquipo,Tareas_IdTareas,FechaBaja) values ('Monica','Antich','3','2',1);
insert into Integrantes (Nombre,Apellido,Equipo_IdEquipo,Tareas_IdTareas,FechaBaja) values ('Ivan','Massimino','3','3',1);
insert into Integrantes (Nombre,Apellido,Equipo_IdEquipo,Tareas_IdTareas,FechaBaja) values ('Diego','Silva','2','3',1);
insert into Login (Fecha,Usuario_IdUsuario,FechaBaja) values ('2021/10/30','1',1);
insert into Login (Fecha,Usuario_IdUsuario,FechaBaja) values ('2021/10/29','1',1);
insert into Login (Fecha,Usuario_IdUsuario,FechaBaja) values ('2021/10/28','1',1);
insert into Usuario (Nombre,Apellido,TipoDoc_IdTipoDoc,DNI,Email,Contraseña,Pais_IdPais,Ciudad_IdCiudad,FechaBaja) values ('Juan Manuel','López','1','36125641','juanem@hotmail.com','password','1','1',1);
insert into Usuario (Nombre,Apellido,TipoDoc_IdTipoDoc,DNI,Email,Contraseña,Pais_IdPais,Ciudad_IdCiudad,FechaBaja) values ('Maluquinho','Benitez','2','36213445','maluquinho@hotmail.com','qweasdaswq','2','2',1);
insert into Tareas (Descripcion,TipoTarea_IdTipoTarea,InicioTarea_IdInicioTarea,FinTarea_IdFinTarea,FechaBaja) values ('Sacar la basura','3','1','1',1);
insert into Tareas (Descripcion,TipoTarea_IdTipoTarea,InicioTarea_IdInicioTarea,FinTarea_IdFinTarea,FechaBaja) values ('Preparar trabajos prácticos','2','3','2',1);
insert into UsuarioTelefono (Usuario_IdUsuario,Telefono_IdTelefono,FechaBaja) values ('1','2',1);
insert into UsuarioTelefono (Usuario_IdUsuario,Telefono_IdTelefono,FechaBaja) values ('1','1',1);
insert into TareaUsuario (Tareas_IdTareas,Usuario_IdUsuario,FechaBaja) values ('1','1',1);
insert into TareaUsuario (Tareas_IdTareas,Usuario_IdUsuario,FechaBaja) values ('2','1',1);
insert into TareaEquipo (Tareas_IdTareas,Equipo_IdEquipo,FechaBaja) values (1,2,1);
insert into UsuarioEquipo (Usuario_IdUsuario,Equipo_IdEquipo,FechaBaja) values (1,1,1);
insert into UsuarioEquipo (Usuario_IdUsuario,Equipo_IdEquipo,FechaBaja) values (2,2,1);


-- -----------------------------------------------------
-- Tablas hijas
-- -----------------------------------------------------

/*CONSULTAS `ready_bd`.`TipoTarea`

-- ------------------
-- Seleccionar tabla
-- ------------------
select * from TipoTarea;

-- ------------------
-- Eliminar registros
-- ------------------
delete from TipoTarea where IdTipoTarea =1;

-- ------------------
-- Eliminar tabla
-- ------------------
drop table TipoTarea;

*/

/*COMANDOS `ready_bd`.`InicioTarea`

-- ------------------
-- Seleccionar tabla
-- ------------------
select * from InicioTarea;

-- ------------------
-- Seleccionar registro
-- ------------------
select * from InicioTarea where FechaInicio = '2021/10/31';

-- ------------------
-- Eliminar registros
-- ------------------
delete from InicioTarea where IdInicioTarea = 1;

-- ------------------
-- Eliminar tabla
-- ------------------
drop table InicioTarea;

*/

/*COMANDOS `ready_bd`.`FinTarea`

-- ------------------
-- Seleccionar tabla
-- ------------------
select * from FinTarea;

-- ------------------
-- Seleccionar registro
-- ------------------
select * from FinTarea where FechaFin = '2021/11/12';

-- ------------------
-- Eliminar registros
-- ------------------
delete from FinTarea where IdFinTarea = 1;

-- ------------------
-- Eliminar tabla
-- ------------------
drop table FinTarea;

*/

/*COMANDOS `ready_bd`.`TipoDoc`

-- ------------------
-- Seleccionar tabla
-- ------------------
select * from TipoDoc;

-- ------------------
-- Seleccionar registro
-- ------------------
select * from TipoDoc where Tipo = 'DNI';

-- ------------------
-- Eliminar registros
-- ------------------
delete from TipoDoc where IdTipoDoc = 1;

-- ------------------
-- Eliminar tabla
-- ------------------
drop table TipoDoc;

*/

/*COMANDOS `ready_bd`.`Pais`

-- ------------------
-- Seleccionar tabla
-- ------------------
select * from Pais;

-- ------------------
-- Seleccionar registro
-- ------------------
select * from Pais where Nombre = 'Argentina';

-- -------------------------
-- Eliminar registros por ID
-- -------------------------
delete from Pais where IdPais = '1';

-- ----------------------------
-- Eliminar registros por Valor
-- ----------------------------
SET SQL_SAFE_UPDATES = 0;
delete from Pais where Nombre = 'Brasil';
SET SQL_SAFE_UPDATES = 1;

-- ------------------
-- Eliminar tabla
-- ------------------
drop table Pais;

*/

/*COMANDOS `ready_bd`.`Ciudad`

-- ------------------
-- Seleccionar tabla
-- ------------------
select * from Ciudad;

-- -------------------
-- Seleccionar registro
-- -------------------
select * from Ciudad where Nombre = 'Curitiba';

-- -------------------------
-- Eliminar registros por ID
-- -------------------------
delete from Ciudad where IdCiudad = '1';

-- ----------------------------
-- Eliminar registros por Valor
-- ----------------------------
SET SQL_SAFE_UPDATES = 0;
delete from Ciudad where Nombre = 'Curitiba';
SET SQL_SAFE_UPDATES = 1;

-- ------------------
-- Eliminar tabla
-- ------------------
drop table Ciudad;

*/

/*COMANDOS `ready_bd`.`Telefono`

-- ------------------
-- Seleccionar tabla
-- ------------------
select * from Telefono;

-- -------------------
-- Seleccionar registro
-- -------------------
select * from Telefono where Numero = '3512312456';

-- -------------------------
-- Eliminar registros por ID
-- -------------------------
delete from Telefono where IdTelefono = '4';

-- ----------------------------
-- Eliminar registros por Valor
-- ----------------------------
SET SQL_SAFE_UPDATES = 0;
delete from Telefono where Numero = '3512312456';
SET SQL_SAFE_UPDATES = 1;

-- ------------------
-- Eliminar tabla
-- ------------------
drop table Telefono;

*/

-- -----------------------------------------------------
-- Tablas padres
-- -----------------------------------------------------

/*COMANDOS `ready_bd`.`Equipo`
-- -----------------
-- Seleccionar tabla
-- -----------------
select * from Equipo;

-- -------------------
-- Seleccionar registro
-- -------------------
select * from Equipo where Nombre = 'Frente de Batalla';

-- -------------------------
-- Eliminar registros por ID
-- -------------------------
delete from Equipo where IdEquipo = '4';

-- ----------------------------
-- Eliminar registros por Valor
-- ----------------------------
SET SQL_SAFE_UPDATES = 0;
delete from Equipo where Nombre = 'Frente de Batalla';
SET SQL_SAFE_UPDATES = 1;

-- ------------------
-- Eliminar tabla
-- ------------------
drop table Equipo;

*/

/*COMANDOS `ready_bd`.`Integrantes`
-- ------------------
-- Seleccionar tabla
-- ------------------
select * from Integrantes;

-- -------------------
-- Seleccionar registro
-- -------------------
select * from Integrantes where Apellido = 'Sarasa';

-- -------------------------
-- Eliminar registros por ID
-- -------------------------
delete from Integrantes where IdIntegrante = '2';

-- ----------------------------
-- Eliminar registros por Valor
-- ----------------------------
SET SQL_SAFE_UPDATES = 0;
delete from Integrantes where Nombre = 'Diego' AND Apellido = 'Silva';
SET SQL_SAFE_UPDATES = 1;

-- ------------------
-- Eliminar tabla
-- ------------------
drop table Integrantes;

*/

/*COMANDOS `ready_bd`.`Login`
-- ------------------
-- Seleccionar tabla
-- ------------------
select * from Login;

-- -------------------
-- Seleccionar registro
-- -------------------
select * from Login where Fecha = '2021/10/30';

-- -------------------------
-- Eliminar registros por ID
-- -------------------------
delete from Login where IdLogin = '2';

-- ----------------------------
-- Eliminar registros por Valor
-- ----------------------------
SET SQL_SAFE_UPDATES = 0;
delete from Login where Fecha = '2021/10/30';
SET SQL_SAFE_UPDATES = 1;

-- ------------------
-- Eliminar tabla
-- ------------------
drop table Login;

*/

/*COMANDOS `ready_bd`.`Usuario`
-- ------------------
-- Seleccionar tabla
-- ------------------
select * from Usuario;

-- -------------------
-- Seleccionar registro
-- -------------------
select * from Usuario where Nombre LIKE 'Juan%';

-- -------------------------
-- Eliminar registros por ID
-- -------------------------
delete from Usuario where IdUsuario = '2';

-- ----------------------------
-- Eliminar registros por Valor
-- ----------------------------
SET SQL_SAFE_UPDATES = 0;
delete from Usuario where Nombre = 'Juan Manuel';
SET SQL_SAFE_UPDATES = 1;

-- ------------------
-- Eliminar tabla
-- ------------------
drop table Usuario;

*/

/*COMANDOS `ready_bd`.`Tareas`
-- ------------------
-- Seleccionar tabla
-- ------------------
select * from Tareas;

-- -------------------
-- Seleccionar registro
-- -------------------
select * from Tareas where InicioTarea_IdInicioTarea = '1';

-- -------------------------
-- Eliminar registros por ID
-- -------------------------
delete from Tareas where IdTareas = '1';

-- ----------------------------
-- Eliminar registros por Valor
-- ----------------------------
SET SQL_SAFE_UPDATES = 0;
delete from Tareas where Descripcion LIKE 'Prepar%';
SET SQL_SAFE_UPDATES = 1;

-- ------------------
-- Eliminar tabla
-- ------------------
drop table Tareas;

*/

-- -----------------------------------------------------
-- Tablas compuestas
-- -----------------------------------------------------

/*COMANDOS `ready_bd`.`UsuarioTelefono`
-- ------------------
-- Seleccionar tabla
-- ------------------
select * from UsuarioTelefono;

-- -------------------
-- Seleccionar registro
-- -------------------
select * from UsuarioTelefono where Telefono_IdTelefono = '2';

-- ------------------
-- Eliminar registros
-- ------------------
delete from UsuarioTelefono where Telefono_IdTelefono = '2';

-- ------------------
-- Eliminar tabla
-- ------------------
drop table UsuarioTelefono;

*/

/*COMANDOS `ready_bd`.`TareaUsuario`
-- ------------------
-- Seleccionar tabla
-- ------------------
select * from TareaUsuario;

-- -------------------
-- Seleccionar registro
-- -------------------
select * from TareaUsuario where Tareas_IdTareas = '1';

-- ------------------
-- Eliminar registros
-- ------------------
delete from TareaUsuario where Usuario_IdUsuario = '1';

-- ------------------
-- Eliminar tabla
-- ------------------
drop table TareaUsuario;

*/

/*COMANDOS `ready_bd`.`TareaEquipo`
-- ------------------
-- Seleccionar tabla
-- ------------------
select * from TareaEquipo;

-- -------------------
-- Seleccionar registro
-- -------------------
select * from TareaEquipo where Equipo_IdEquipo = '2';

-- ------------------
-- Eliminar registros
-- ------------------
delete from TareaEquipo where Equipo_IdEquipo = '2';

-- ------------------
-- Eliminar tabla
-- ------------------
drop table TareaEquipo;

*/

/*COMANDOS `ready_bd`.`UsuarioEquipo`
-- ------------------
-- Seleccionar tabla
-- ------------------
select * from UsuarioEquipo;

-- -------------------
-- Seleccionar registro
-- -------------------
select * from UsuarioEquipo where Equipo_IdEquipo = '1';

-- ------------------
-- Eliminar registros
-- ------------------
delete from UsuarioEquipo where Equipo_IdEquipo = '2';

-- ------------------
-- Eliminar tabla
-- ------------------
drop table UsuarioEquipo;

*/
