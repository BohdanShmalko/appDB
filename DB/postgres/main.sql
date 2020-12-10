-- \i D:/appDB/DB/postgres/main.sql
\c postgres;

DROP DATABASE gradebook;

CREATE DATABASE gradebook;

\c gradebook;

\i D:/appDB/DB/postgres/days.sql
\i D:/appDB/DB/postgres/teachers.sql
\i D:/appDB/DB/postgres/subjects.sql
\i D:/appDB/DB/postgres/groups.sql
\i D:/appDB/DB/postgres/students.sql
\i D:/appDB/DB/postgres/hours.sql
\i D:/appDB/DB/postgres/places.sql
\i D:/appDB/DB/postgres/students_emails.sql
\i D:/appDB/DB/postgres/students_phones.sql
\i D:/appDB/DB/postgres/students_authentications.sql
\i D:/appDB/DB/postgres/teachers_authentications.sql
\i D:/appDB/DB/postgres/teachers_emails.sql
\i D:/appDB/DB/postgres/teachers_phones.sql
\i D:/appDB/DB/postgres/evaluations.sql
\i D:/appDB/DB/postgres/schedules.sql


INSERT INTO days (day,study_week) VALUES ('monday','1'); 
INSERT INTO evaluations (mark100, markword, certification_form, assessment_date, study_semester, beginning_semester, end_semester, student_id, subject_id, teacher_id) VALUES ('100','perfect','test','2021-04-04','6','2025-05-05','2019-07-07',6,2,6);
INSERT INTO checked (teacher_status,teacher_id,degreeproject_id) VALUES ('first',2,6);
INSERT INTO certifications (teacher_status,teacher_id,certification_id) VALUES ('third',2,5);
INSERT INTO students_authentications (login,password,student_id) VALUES ('zFK5ac3R','9BIW8g',1);
INSERT INTO teachers_authentications (login,password,teacher_id) VALUES ('SRgfseRQb13Y','wOD8jJ',8);
INSERT INTO students_phones (phone_number,sign,student_id) VALUES ('9116657943','smth',4);
INSERT INTO teachers_phones (phone_number,sign,teacher_id) VALUES ('5238541353','smth',2);
INSERT INTO students_emails (email,sign,student_id) VALUES ('asmartman3z@irs.gov','smth',3);
INSERT INTO teachers_emails (email,sign,teacher_id) VALUES ('lburnep22@elegantthemes.com','smth',6);
INSERT INTO degreeprojects (topic,project_submission_date ,protection_date,mark100,markwords,notes,date_end,honors,decisionNumber,from_date,page,student_id) VALUES ('DB','2016-01-01','2025-05-05','60','perfect','smth','2019-05-06','perfect','2555','2019-05-06','2',7);
INSERT INTO practicMarks (beginData,finishData,supervisor,mark100,markwords,draftingDate,practice_id) VALUES ('2024-04-04','2023-03-03','Murricanes','90','perfect','2021-10-10',8);
INSERT INTO practices (name,course,place,position,page,student_id) VALUES ('Latin','5','factory','54 Eastlawn Parkway','1',10);
INSERT INTO students (first_name,last_name,father_name,scholarship,education_form,status,birth_day,photoURL,group_id,gradebook_id) VALUES ('Emmeline','Barratt','Eliot',3000,'high','simple','2000-09-09','https://www.shorturl.at/img/shorturl-square.png',9,4);
INSERT INTO schedule (teacher_id,subject_id,group_id,hour_id,place_id,day_id) VALUES (4,1,9,6,8,6);
INSERT INTO groups (name,specialty,creation,course,training_direction,education_level,qualification,admissionCourse,institute_id,faculty_id,curator_id) VALUES ('IO-99','maneger','2013-05-05','7','daly','low','bakalavr',5,4,4,3);
INSERT INTO institutes (name,rector_name,rector_lastname,rector_fathername) VALUES ('ASDFKCC','Zahara','Togwell','Timotheus');
INSERT INTO faculties (name,dean_name,dean_lastname,dean_fathername) VALUES ('MXMMX','Gaelan','Dinsell','Iain');
INSERT INTO gradebooks (number,issueDate) VALUES ('2541','2016-01-01');
INSERT INTO places (corps,audience) VALUES ('17','302');
INSERT INTO hours (pair_number,beginning,ending) VALUES (1,'8:30','10:05');
INSERT INTO subjects (name,description,loans,hours,occupation_type) VALUES ('History','smth',40,32,'practice');
INSERT INTO teachers (first_name,last_name,futher_name,department,salary,qualification_level,contract_termination) VALUES ('Janet','Viste','Jodi','KZU',8000,'high teacher','2018-08-08');

