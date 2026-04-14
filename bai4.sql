CREATE SCHEMA elearning;
CREATE TABLE elearning.Studunts(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email CHAR NOT NULL UNIQUE
);
ALTER TABLE elearning.Instructors DROP COLUMN assignment_id SERIAL PRIMARY KEY;
ALTER TABLE elearning.Instructors ADD COLUMN instructor_id SERIAL PRIMARY KEY;
CREATE TABLE elearning.Instructors(
	instructor_id SERIAL PRIMARY KEY,
	course_id INT,
	title VARCHAR(100) NOT NULL UNIQUE
);
CREATE TABLE elearning.Courses(
	course_id SERIAL PRIMARY KEY,
	course_name VARCHAR(100) NOT NULL,
	instructor_id INT,
	FOREIGN KEY (instructor_id)
	REFERENCES elearning.Instructors(instructor_id)
);
CREATE TABLE elearning.Assignments(
	assignment_id SERIAL PRIMARY KEY,
	course_id INT,
	title VARCHAR(100) NOT NULL,
	due_date DATE NOT NULL,
	FOREIGN KEY (course_id)
	REFERENCES elearning.Coures(course_id)
);
CREATE TABLE elearning.Submissions(
	submission_id SERIAL PRIMARY KEY,
	assignment_id INT,
	student_id INT,
	submission_date DATE NOT NULL,
	grade FLOAT  PRECISION,
	FOREIGN KEY (assignment_id)
	REFERENCES elearning.(Assignments)assignment_id,
	FOREIGN KEY (student_id)
	REFERENCES elearing.Students(student_id)
);