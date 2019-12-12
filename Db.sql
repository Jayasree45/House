use Training_12DecMumbai;
create schema college;

---student Table---
create table college.Student(
studentId int identity(1000,1) primary key,
studentName varchar(20),
emailId varchar(50),
phoneNumber varchar(13) CONSTRAINT chk_phone CHECK (phoneNumber like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
password varchar(15),
address varchar(30),
courseId int not null  foreign key references college.Course(courseId),
departmentId int not null foreign key references college.Department(DepartmentId),
gender varchar(10) constraint ck_gender check (gender in ('Male','female')),
attendance float ,
academicYear date,
percentage float
)


---Staff Table---
create table college.Staff(
staffId int identity primary key,
facultyName varchar(20),
emailId varchar(50),
password varchar(20),
gender varchar(10) constraint ck1_gender check (gender in ('Male','female')),
address varchar(30),
experience float,
courseId int not null  foreign key references college.Course(courseId),
departmentId int not null foreign key references college.Department(DepartmentId),
attendance float)






--Cousre Table---
create table college.Course(
courseId int identity primary key ,
courseName varchar(20)
)

drop table college.Student
drop table college.Course;
drop table college.Department;

--department Table-----
create table college.Department(
departmentId int identity primary key ,
departmentName varchar(20)
)
select * from college.Department

select * from college.Course
