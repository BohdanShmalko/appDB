CREATE TABLE checked
(
    id serial NOT NULL PRIMARY KEY,
    teacher_status VARCHAR(40) not null,
    teacher_id INT NOT NULL REFERENCES teachers (id),
    degreeproject_id INT NOT NULL REFERENCES degreeprojects (id)
);

-- teacher_status :
-- course_supervisor
-- head
-- first
-- second
-- third
