CREATE TABLE students
(snum int UNIQUE NOT NULL,
ssn int,
name varchar(10),
gender varchar(1),
dob datetime,
c_addr varchar(20),
c_phone varchar(10),
p_addr varchar(20),
p_phone varchar(10),
PRIMARY KEY(ssn)
);

CREATE TABLE departments(
code int,
name varchar(50) UNIQUE NOT NULL,
phone varchar(10),
college varchar(20),
PRIMARY KEY(code)
);

CREATE TABLE degrees(
name varchar(50),
level varchar(5),
department_code int,
PRIMARY KEY(name,level),
FOREIGN KEY(department_code) references departments(code)
);

CREATE TABLE courses(
number int,
name varchar(50),
description varchar(50),
credithours int,
level varchar(20),
department_code int,
PRIMARY KEY(number),
FOREIGN KEY(department_code) references departments(code)
);


CREATE TABLE register(
snum int,
course_number int,
regtime varchar(20),
grade int,
PRIMARY KEY(snum, course_number),
FOREIGN KEY(snum) references students(snum),
FOREIGN KEY(course_number) references courses(number)
);

CREATE TABLE major(
snum int,
name varchar(50),
level varchar(5),
PRIMARY KEY(snum,name,level),
FOREIGN KEY(snum) references students(snum),
FOREIGN KEY(name,level) references degrees(name,level)
);

CREATE TABLE minor(
snum int,
name varchar(50),
level varchar(5),
PRIMARY KEY(snum,name,level),
FOREIGN KEY(snum) references students(snum),
FOREIGN KEY(name,level) references degrees(name,level)
);