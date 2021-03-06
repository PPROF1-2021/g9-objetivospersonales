
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
update Usuario 
set 
    Nombre = 'Lucas'
where
    DNI = 4169122;
update Usuario 
set 
    Nombre = 'Tomas'
where
    DNI = 4121345;
    update Usuario 
set 
    Nombre = 'Lucas'
where
    DNI = 4169122;
    update Usuario 
set 
    Nombre = 'Lara'
where
    DNI = 4345454;
    update Usuario 
set 
    Nombre = 'Lyla'
where
    DNI = 2344545;
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
