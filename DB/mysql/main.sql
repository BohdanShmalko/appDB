use sys;

DROP DATABASE gradebook;

CREATE DATABASE gradebook
    CHARACTER SET utf8 COLLATE utf8_general_ci;

use gradebook;

source D:/appDB/DB/mysql/days.sql
source D:/appDB/DB/mysql/teachers.sql
source D:/appDB/DB/mysql/subjects.sql
source D:/appDB/DB/mysql/groups.sql
source D:/appDB/DB/mysql/students.sql
source D:/appDB/DB/mysql/hours.sql
source D:/appDB/DB/mysql/places.sql
source D:/appDB/DB/mysql/students_emails.sql
source D:/appDB/DB/mysql/students_phones.sql
source D:/appDB/DB/mysql/students_authentications.sql
source D:/appDB/DB/mysql/teachers_authentications.sql
source D:/appDB/DB/mysql/teachers_emails.sql
source D:/appDB/DB/mysql/teachers_phones.sql
source D:/appDB/DB/mysql/evaluations.sql
source D:/appDB/DB/mysql/schedules.sql

