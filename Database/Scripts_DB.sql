create database pi_da;

use pi_da;

CREATE TABLE comunas (
ID_COMUNA INT NOT NULL,
COMUNA VARCHAR(150),      
PRIMARY KEY (ID_COMUNA)
);

SELECT * FROM comunas;

CREATE TABLE hechos (
ID_HECHOS INT NOT NULL,         
N_VICTIMAS int, 
FECHA DATE,
ANIO int,
MES int,
DIA int,
TIPO_DE_CALLE  VARCHAR(50),      
ID_COMUNA int,          
LATITUD DECIMAL(10,8),        
LONGITUD DECIMAL(10,8),        
VICTIMA VARCHAR(50),     
ACUSADO VARCHAR(50),      
FH VARCHAR(50),      
FATAL int,
PRIMARY KEY (ID_HECHOS),
FOREIGN KEY (ID_COMUNA) REFERENCES comunas(ID_COMUNA)
);

select * from HECHOS;

CREATE TABLE victimas (
ID_VICTIMA INT NOT NULL auto_increment,
ID_HECHOS INT NOT NULL,
ROL VARCHAR(50), 
VICTIMA VARCHAR(50), 
SEXO VARCHAR(50), 
EDAD int,
PRIMARY KEY (ID_VICTIMA),
FOREIGN KEY (ID_HECHOS) REFERENCES HECHOS(ID_HECHOS) 
);

SELECT * FROM VICTIMAS;

CREATE TABLE victimasf (
ID_VICTIMA INT NOT NULL auto_increment,
ID_HECHOS INT NOT NULL,
ROL VARCHAR(50), 
VICTIMA VARCHAR(50), 
SEXO VARCHAR(50), 
EDAD int,
FECHA_FALLECIMIENTO date,
PRIMARY KEY (ID_VICTIMA),
FOREIGN KEY (ID_HECHOS) REFERENCES HECHOS(ID_HECHOS) 
);

select * from victimasf;

CREATE TABLE poblacion (
ID_POBLACION INT NOT NULL auto_increment,
ID_COMUNA INT NOT NULL,  
SUPERFICIE_KM2 DECIMAL(15,2),
POBLACION_TOTAL INT,  
DENSIDAD_HAB_KM2 DECIMAL(15,2),
PRIMARY KEY (ID_POBLACION),
FOREIGN KEY (ID_COMUNA) REFERENCES comunas(ID_COMUNA)
);

SELECT * FROM POBLACION;
 