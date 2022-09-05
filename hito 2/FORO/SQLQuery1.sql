create database universidad10;

create table cliente(
   
    id_cliente varchar(20) primary key,
    nombre varchar(20),
	apellido varchar(20),
	edad integer,
	telefono integer,
	);

	insert into cliente(id_cliente,nombre,apellido,edad,telefono)
	    values('BSS23423','JUAN','PEREZ',28,72343237);


    select * 
	from cliente;




	create table vehiculo(
   
    matricula varchar(20) primary key,
    modelo varchar(20),
	marca varchar(20),
	precio integer,
	color varchar(20),
	);


	insert into vehiculo(matricula,modelo,marca,precio,color)
    values('3506-ASED','RUNNER2022','TOYOTA',45000,'GRIS');



	
    select * 
	from vehiculo;



	create table cliente(
   
    id_cliente varchar(20) primary key,
    nombre varchar(20),
	apellido varchar(20),
	edad integer,
	telefono integer,
	);


	create table compra_vehiculo(
	    codigo_compra varchar(20) primary key,
		id_cliente varchar(20),
		matricula varchar(20),
		
		foreign key(id_cliente)references cliente(id_cliente),
		foreign key(matricula)references vehiculo(matricula),

	);

	insert into compra_vehiculo(codigo_compra,id_cliente,matricula)
	values ('AKDERT','BSS23423','3506-ASED');

	DROP TABLE compra_vehiculo;

	select *
	FROM compra_vehiculo;