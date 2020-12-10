SELECT students_authentications.student_id FROM students_authentications
    WHERE students_authentications.login = '82urvuSN' AND
        students_authentications.password = 'tHh3hg';

SELECT teachers_authentications.teacher_id FROM teachers_authentications
        WHERE teachers_authentications.login = 'WhrkVE' AND
            teachers_authentications.password = 'dG5Z0CLOHH';




SELECT evaluations.beginning_semester || '-' || evaluations.end_semester AS "studyYear",
            array_agg(evaluations.id) AS "marks"
        FROM evaluations
        WHERE evaluations.teacher_id = 1
        GROUP BY evaluations.beginning_semester;




SELECT institutes.name AS "educationalInstitution",
    gradebooks.number AS "gradebookNumber",
    students.first_name AS "studentName",
    students.last_name AS "studentSurname",
    students.futher_name AS "studentFathername",
    faculties.name AS "faculty",
    groups.training_direction AS "trainingDirection",
    groups.specialty AS "specialty",
    groups.qualification AS "qualification",
    students.education_form AS "studyForm",
    groups.admissionCourse AS "admissionCourse",
    groups.creation AS "admissionYear",
    faculties.dean AS "facultyDean",
    institutes.rector AS "educationalViceRector",
    gradebooks.issueDate AS "issueDate",
    students.photoURL AS "photo"
FROM students
INNER JOIN groups ON
 students.group_id = groups.id
INNER JOIN gradebooks ON
 students.gradebook_id = gradebooks.id
INNER JOIN faculties ON
 groups.faculty_id = faculties.id
INNER JOIN institutes ON
 groups.institute_id = institutes.id
WHERE students.id = 1;


SELECT students.first_name AS "studentName",
                    students.last_name AS "studentSurname",
                    students.futher_name AS "studentFathername",
                    evaluations.beginning_semester AS "beginYear",
                    evaluations.end_semester AS "finishYear"
            FROM evaluations
            INNER JOIN students ON
                evaluations.student_id = students.id
            WHERE students.id = 164 AND evaluations.study_semester = '4'
            AND evaluations.certification_form = 'test';
