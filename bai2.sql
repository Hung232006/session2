CREATE SCHEMA university;
CREATE TABLE university.Students(
	student_id SERIAL  PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	birth_date  DATE,
	email CHAR NOT NULL UNIQUE
);

CREATE  TABLE university.Courses(
	enrollment_id SERIAL PRIMARY KEY,
	course_name VARCHAR(100) NOT NULL,
	credis DOUBLE PRECISION
);
ALTER TABLE university.Courses drop column enrollment_id;
ALTER TABLE university.Courses add  column course_id SERIAL PRIMARY KEY;
CREATE TABLE university.Enrollments(
    enrollment_id SERIAL PRIMARY KEY,
    enroll_date DATE,
    student_id INT,
    course_id INT,
        FOREIGN KEY (student_id)
        REFERENCES university.Students(student_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE,
        FOREIGN KEY (course_id)
        REFERENCES university.Courses(course_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
-- câu a
SELECT datname FROM pg_database;
--câu b
SELECT schema_name FROM information_schema.schemata;
--câu c
SELECT* FROM university.Students;
SELECT* FROM university.Courses;
SELECT* FROM university.Enrollments;


