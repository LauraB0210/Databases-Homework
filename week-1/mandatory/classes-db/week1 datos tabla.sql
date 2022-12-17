insert into mentors (name, years_in_glasglow, address, favourite_language)
values ('Lara', 4, 'Isard Street 3', 'Javascript'),
('Jean', 2, 'Jean Street 25', 'html'),
('Ian', 11, 'Ian Street 2', 'CSS'),
('Carmel', 9, 'Carmel Street 9', 'CSS'),
('Oswaldo',2,'Congress','Javascript');

delete from mentors;
select * from mentors;


insert into students(name, address, graduated_from_Code_Your_Future)
values('Alberto', 'Avenida Malaga 43', true),
('Alejandro', 'Diagonal 234, 1º', false),
('Maria', 'Gràcia 23', false),
('Gisela', 'Gran via 45, 2º', true),
('Laura', 'Gran Avenida, 7º', false),
('Rouse', 'Monserrat, 15º', false),
('Mica', 'Calle nueva, 34º', true),
('Ela', 'Calle Vieja, 5', false),
('Mona', 'Nueva vida, 4º', true),
('Lisa', 'Fiesta viva, 55º', false);

select * from students;

insert into classes (mentor_id, tema, fecha_class, lugar_class)
values(12, 'Phyton', '2022-12-17', 'Adevinta'),
(11, 'CSS', '2022-04-17', 'Soler');

delete from classes;
select * from classes;

insert  into attendance (student_id, class_id, asistencia)
values(5, 2, true ),
(7, 3, false);

select * from attendance;

--Read all the mentors who lived more than 5 years in Glasgow
select * from mentors
where years_in_glasglow >5;

--Read all the mentors whose favourite language is Javascript
select * from mentors
where favourite_language ='Javascript';

--Read all the students who are CYF graduates
select * from students 
where  graduated_from_Code_Your_Future = true;

--Read all the classes taught before June this year
select  * from classes
where  fecha_class < '2022-06-30';

--Retrieve all the students (retrieving student ids only is fine) 
--who attended the Javascript class 
---(or any other class that you have in the classes table).

select * from attendance 
where  asistencia = true ;

