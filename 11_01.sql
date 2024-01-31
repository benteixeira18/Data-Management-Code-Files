CREATE TABLE Students
(
StudentID NUMBER(9),
Student_firstName VARCHAR(15),
Student_lastName VARCHAR(15),
Street VARCHAR(30),
City VARCHAR(15),
State_abr VARCHAR(2),
ZipCode NUMBER(5),
Major VARCHAR(20),

CONSTRAINT Students_StudentID_PK PRIMARY KEY (StudentID)
);

CREATE TABLE Instructors
(
InstructorID NUMBER(9),
Instructor_firstName VARCHAR(15),
Instructor_lastName VARCHAR(15),

CONSTRAINT Instructors_InstructorID_PK PRIMARY KEY (InstructorID)
);

CREATE TABLE Course
(
CourseID NUMBER(4),
Title VARCHAR(15),
InstructorID NUMBER(9),

CONSTRAINT Course_CourseID_PK PRIMARY KEY (CourseID),
CONSTRAINT Course_InstructorID_FK FOREIGN KEY (InstructorID)
REFERENCES Instructors(InstructorID)
);

CREATE TABLE Student_Grade
(
StudentID NUMBER(9),
CourseID NUMBER(4),
Semester VARCHAR(6),
Year_ NUMBER(4),
Grade VARCHAR(2),

CONSTRAINT Student_Grade_StudentIDCourseIDSemesterYear_PK PRIMARY KEY (
StudentID, CourseID, Semester, Year_),
CONSTRAINT Student_Grade_StudentID_FK FOREIGN KEY (StudentID)
REFERENCES Students(StudentID),
CONSTRAINT Student_Grade_CourseID_FK FOREIGN KEY (CourseID)
REFERENCES Course(CourseID)
);

DESCRIBE Students;
DESCRIBE Instructors;
DESCRIBE Course;
DESCRIBE Student_Grade;

ALTER TABLE Student_Grade
ADD CONSTRAINT Student_Grade_Grade_CK CHECK
(Grade in ('A','A-','B+','B','B-','C+','C','C-','D+','D','D-','F'));

'next time add NOT NULL for non-nullable values'







