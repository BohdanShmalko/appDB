CREATE TABLE commissions
(
    id serial NOT NULL PRIMARY KEY,
    teacher_status VARCHAR(40) not null,
    teacher_id INT NOT NULL REFERENCES teachers (id),
    certification_id INT NOT NULL REFERENCES certifications (id)
);
