 create table mentors(
 id serial primary key,
 name varchar (30) not null unique,
 years_in_glasglow int,
 address varchar (60),
 favourite_language varchar (30)
 );
 
create table students(
id serial primary key,
name varchar (30),
address varchar (60),
graduated_from_Code_Your_Future boolean
);

create table classes (
id serial primary key,
mentor_id int references mentors (id),
tema varchar (30),
fecha_class date,
lugar_class varchar (60)
);

create table attendance (
  id        SERIAL PRIMARY KEY,
  student_id INT REFERENCES students(id),
  class_id INT REFERENCES classes(id),
  asistencia boolean 
);


drop table attendance;

