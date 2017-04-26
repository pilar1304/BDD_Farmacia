create database FARMACE
use FARMACE

CREATE TABLE SUCURSAL(
idSucur int primary key,
nombreSucur varchar(50),
direcSucur varchar(50),
telefSucur varchar(15)
)

CREATE TABLE PROVEEDOR(
id_Prove int primary key,
nombre_Prove varchar(50),
apellido_Prove varchar(50),
direccion_Prove varchar(50),
telef_Prove varchar(15),
idSucurFK int,
FOREIGN KEY (idSucurFK) REFERENCES SUCURSAL (idSucur));
)

CREATE TABLE EMPLEADO(
id_Empleado int primary key,
nombre_Empleado varchar(50),
apellido_Empleado varchar(50),
telef_Empleado varchar(15),
idSucurFK int,
FOREIGN KEY (idSucurFK) REFERENCES SUCURSAL (idSucur));
)

CREATE TABLE CLIENTE
(
id_cli int primary key,
nombre varchar(20),
apellido varchar(20),
direccion varchar(50),
telefono varchar(15),
)

CREATE TABLE CABE_FACTU
(
id_cab int primary key,
id_cliFK int,
FOREIGN KEY (id_cliFK) REFERENCES CLIENTE (id_cli));
)

CREATE TABLE DETA_FACTU
(
id_deta int primary key,
id_prodFK int,
CostoUnitario int(10),
CostoTotal int (10),
FOREIGN KEY (id_prodFK) REFERENCES CLIENTE (id_prod));
)

create table VENTAS(
idVentas int primary key,
id_cabFK int,
id_detaFK int,
id_EmpleadoFK int,
FOREIGN KEY (id_EmpleadoFK) REFERENCES EMPLEADO (id_Empleado)),
FOREIGN KEY (id_cabFK) REFERENCES CABE_FACTU (id_cab)),
FOREIGN KEY (id_detaFK) REFERENCES DETA_FACTU (id_deta));
)


CREATE TABLE PRODUCTO
(
id_prod int primary key,
nombre varchar(80),
precio varchar(20),
idSucurFK int,
FOREIGN KEY (idSucurFK) REFERENCES SUCURSAL (idSucur));
)


