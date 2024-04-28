CREATE database BDINVENTARIO

CREATE TABLE Articulo
(
	codigoArticulo int identity(5,2) PRIMARY KEY,
	description varchar(50) NOT NULL,
	precio money DEFAULT 0 NOT NULL
)

CREATE TABLE bodega
(
	codigoBodega int identity(1,2) primary key,
	descripcion varchar(20) unique not null
)

CREATE table ArticuloBodega
(
	 codigoArticulo int,
	 codigoBodega int,
	 id int,
	 cantidad float,
	 CONSTRAINT FK_CodigoArticulo FOREIGN KEY (codigoArticulo) REFERENCES Articulo(codigoArticulo),
	 CONSTRAINT FK_CodigoBodega FOREIGN KEY (codigoBodega) REFERENCES BODEGA(codigoBodega)
)