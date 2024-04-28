--Crear BD
CREATE database DB_SQL

Use BD_SQL
--Creat table jugador

CREATE TABLE Jugador (
    id INTEGER PRIMARY KEY,
    nombre varchar(50),
    edad INTEGER
);

SELECT  * FROM Jugador;
SELECT NOMBRE, EDAD FROM Jugador;

INSERT INTO Jugador values(3, "Joel Campbell", 31, 23, 1, 23); 

ALTER TABLE Jugador add column numero1 numeric;

ALTER TABLE Jugador rename numero to camiseta;

ALTER TABLE Jugador modify apellido varchar(60);

ALTER TABLE Jugador drop colum;

UPDATE Jugador set apellido = "Medford" where id = 1;

UPDATE Jugador set nombre = "Hernan" where id = 1;

UPDATE Jugador set apellido = "Soto", nombre = "Jafet" where id = 2;

SELECT * FROM Jugador WHERE edad > 31;

SELECT * FROM Jugador WHERE nombre like "J%" AND edad = 31; 

SELECT * FROM Jugador WHERE nombre like "J%" or edad = 56; 

SELECT * FROM Jugador WHERE nombre like "Joe%";

SELECT * FROM Jugador WHERE edad BETWEEN 51 and 56;

SELECT * FROM Jugador ORDER BY nombre DESC;

SELECT  nombre, edad FROM Jugador  where edad <> 51 ORDER BY edad DESC;

SELECT * FROM Jugador where edad in (1, 31, 36, 56) ORDER BY edad DESC;

SELECT * FROM Jugador where camiseta is NULL;

INSERT INTO Jugador (nombre, edad, apellido, camiseta) values ("Ronaldinho", null, "Gaucho", 11);

SELECT MAX(edad) FROM Jugador; 

SELECT MIN(edad) FROM Jugador; 

SELECT AVG(edad) FROM Jugador; 

SELECT SUM(edad) FROM Jugador; 

SELECT COUNT(*) FROM Jugador; 

SELECT MAX(edad), MIN(edad), AVG(edad) FROM Jugador; 

SELECT lower(nombre) from Jugador;

SELECT upper(nombre) from Jugador;

SELECT nombre, LENGTH (nombre) from Jugador;

SELECT nombre, edad from Jugador where edad = ( SELECT min(edad) from Jugador);

SELECT edad, COUNT(*) from Jugador group by edad;

SELECT edad, COUNT(*) from Jugador group by edad order by COUNT(*) desc LIMIT  1; 

DELETE FROM Jugador where id = 2;

create table ciudades (codigo char(3) primary key, nombre varchar(40));

INSERT INTO ciudades values("A", "Alicante"), ("B", "Bogota"), ("C", "Cancun");

SELECT * FROM ciudades ;

ALTER TABLE Jugador add column codciudad;

UPDATE Jugador set codciudad = "C" where id = 3;

SELECT nombre , codciudad FROM Jugador, ciudades WHERE Jugador.codciudad = ciudades.codigo;


SELECT Jugador.nombre  as nombreJugador, ciudades.nombre as nombreCiudad from Jugador, ciudades where Jugador.codciudad = ciudades.codigo;

SELECT * FROM Jugador j;

SELECT J.nombre as nombreJugador from Jugador as j;

SELECT Jugador.nombre , ciudades.nombre from Jugador join ciudades on Jugador.codciudad = ciudades.codigo where edad = 56;

SELECT Jugador.nombre , ciudades.nombre from Jugador inner join ciudades on Jugador.codciudad = ciudades.codigo;