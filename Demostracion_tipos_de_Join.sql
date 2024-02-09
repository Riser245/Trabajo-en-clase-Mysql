create database Demostracion_joins;

use Demostracion_joins;

create table tbmateria(
id_materia int not null auto_increment primary key,
materia varchar(40)
);

select*from tbmateria;

INSERT INTO tbmateria (materia) VALUES ("Lenguaje");  
INSERT INTO tbmateria (materia) VALUES ("Matematica");  
INSERT INTO tbmateria (materia) VALUES ("Sociales");  
INSERT INTO tbmateria (materia) VALUES ("Ciencias");  


create table tbestudiante(
id_estudiante int not null auto_increment primary key,
nombre_estudiante varchar(30),
apellido_estudiante varchar(30),
codigo_estudiante int(8),
grado_estudiante varchar(30),
especialidad_estudiante varchar(40),
id_materia int,
FOREIGN KEY (id_materia) REFERENCES tbmateria(id_materia)
);


INSERT INTO tbestudiante (nombre_estudiante,apellido_estudiante,codigo_estudiante,grado_estudiante,especialidad_estudiante,id_materia) VALUES ("Anderson","Figueroa","20220105","Promo","Desarrollo_de_software","2");  
INSERT INTO tbestudiante (nombre_estudiante,apellido_estudiante,codigo_estudiante,grado_estudiante,especialidad_estudiante,id_materia) VALUES ("Jose","Castillo","20220235","Promo","Desarrollo_de_software","4");  
INSERT INTO tbestudiante (nombre_estudiante,apellido_estudiante,codigo_estudiante,grado_estudiante,especialidad_estudiante,id_materia) VALUES ("Dennis","Gonzales","20220440","Promo","Desarrollo_de_software","1");  
INSERT INTO tbestudiante (nombre_estudiante,apellido_estudiante,codigo_estudiante,grado_estudiante,especialidad_estudiante,id_materia) VALUES ("Fernando","Paniagua","20220418","Promo","Desarrollo_de_software","3");  


select*from tbestudiante;


select*from tbestudiante as te inner join tbmateria as tm on te.id_materia=tm.id_materia;


select*from tbestudiante as te left join tbmateria as tm on te.id_materia=tm.id_materia;


select*from tbestudiante as te right join tbmateria as tm on te.id_materia=tm.id_materia;




