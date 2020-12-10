const SQL = {
    title :  (userId, num, db) => ({}),
    studentsInf : async (userId, num, db) =>  {
        //faculties.dean_name || ' ' || faculties.dean_lastname || ' ' || faculties.dean_fathername AS "facultyDean"
    let result = await db.query(
`SELECT institutes.name AS "educationalInstitution",
    gradebooks.number AS "gradebookNumber",
    students.first_name AS "studentName",
    students.last_name AS "studentSurname",
    students.father_name AS "studentFathername",
    faculties.name AS "faculty",
    groups.training_direction AS "trainingDirection",
    groups.specialty AS "specialty",
    groups.qualification AS "qualification",
    students.education_form AS "studyForm",
    groups.admissionCourse AS "admissionCourse",
    groups.creation AS "admissionYear",
    faculties.dean_name || ' ' || faculties.dean_lastname || ' ' || faculties.dean_fathername AS "facultyDean",
    institutes.rector_name || ' ' || institutes.rector_lastname || ' ' || institutes.rector_fathername AS "educationalViceRector",
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
WHERE students.id = ${userId}`)
        return result[0]
},
    test : async (userId, num, db) => {
        const semester = (num)/2
        let result = {
            studentName : "",
            studentSurname : "",
            studentFathername : "",
            beginYear : "",
            finishYear : ""
        }
        let data = await db.query(
            `SELECT students.first_name AS "studentName",
                    students.last_name AS "studentSurname",
                    students.father_name AS "studentFathername",
                    evaluations.beginning_semester AS "beginYear",
                    evaluations.end_semester AS "finishYear"
            FROM evaluations
            INNER JOIN students ON
                evaluations.student_id = students.id
            WHERE students.id = ${userId} AND study_semester = '${semester}'
            AND evaluations.certification_form = 'test'`)
        result = {...result, ...data[0]}
        result.semester = semester
        result.marks = new Array(10).fill({})
        let marks = await db.query(`
            SELECT subjects.name AS "subject",
                subjects.hours AS "hours",
                subjects.loans AS "loans",
                teachers.last_name AS "teacher",
                evaluations.mark100 AS "mark100",
                evaluations.markword AS "markWords",
                evaluations.assessment_date AS "draftingDate"
            FROM evaluations
            INNER JOIN subjects ON
                evaluations.subject_id = subjects.id
            INNER JOIN teachers ON
                evaluations.teacher_id = teachers.id
            WHERE evaluations.student_id = ${userId} AND
                evaluations.study_semester = '${semester}' AND
                evaluations.certification_form = 'test'
        `)

        for(let i = 0; i < marks.length; i++){
            result.marks[i] = marks[i]
        }
        return result
    },
    examination : async (userId, num, db) => {
        let result = {
            studentName : "",
            studentSurname : "",
            studentFathername : "",
            beginYear : "",
            finishYear : ""
        }
        const semester = (num-1)/2
        let data = await db.query(
            `SELECT students.first_name AS "studentName",
                    students.last_name AS "studentSurname",
                    students.father_name AS "studentFathername",
                    evaluations.beginning_semester AS "beginYear",
                    evaluations.end_semester AS "finishYear",
                    evaluations.study_semester AS "semester"
            FROM evaluations
            INNER JOIN students ON
                evaluations.student_id = students.id
            WHERE students.id = ${userId} AND evaluations.study_semester = '${semester}'
             AND evaluations.certification_form = 'examination'`)
        result = {...result, ...data[0]}
        result.marks = new Array(10).fill({})
        let marks = await db.query(`
            SELECT subjects.name AS "subject",
                subjects.hours AS "hours",
                subjects.loans AS "loans",
                teachers.last_name AS "teacher",
                evaluations.mark100 AS "mark100",
                evaluations.markword AS "markWords",
                evaluations.assessment_date AS "draftingDate"
            FROM evaluations
            INNER JOIN subjects ON
                evaluations.subject_id = subjects.id
            INNER JOIN teachers ON
                evaluations.teacher_id = teachers.id
            WHERE evaluations.student_id = ${userId} AND
                evaluations.study_semester = '${semester}' AND
                evaluations.certification_form = 'examination'
        `)

        for(let i = 0; i < marks.length; i++){
            result.marks[i] = marks[i]
        }
        return result
    },
    practiceTable : async (userId, num, db) => {
        const practiceTables = {26 : 1, 32 : 2}
        let result = {
            practiceName : "",
            course : "",
            wherePractice : "",
            position : ""
        }
        result.practices = new Array(9).fill({})
        let practices = await db.query(`
        SELECT practices.name AS "practiceName",
            practices.course AS "course",
            practices.place AS "wherePractice",
            practices.position AS "position"
        FROM practices
        WHERE practices.student_id = ${userId} AND
            practices.page = '${practiceTables[num]}'
        `)
        for (let i = 0; i < practices.length; i++){
            result.practices[i] = practices[i]
        }
        return result
    },
    practice : async (userId, num, db) =>{
        const practiceTables = {27 : 1, 33 : 2}
        let result = {
            studentName : "",
            studentSurname : "",
            studentFathername : ""
        }
        let data = await db.query(`
        SELECT students.first_name AS "studentName",
            students.last_name AS "studentSurname",
            students.father_name AS "studentFathername"
        FROM students WHERE students.id = ${userId}
        `)
        result = {...result, ...data[0]}
        result.practices = new Array(9).fill({})
        
        let practices = db.query(`
        SELECT practicMarks.beginData AS "beginData",
            practicMarks.finishData AS "finishData",
            practicMarks.supervisor AS "supervisor",
            practicMarks.mark100 AS "mark100",
            practicMarks.markwords AS "markWords",
            practicMarks.draftingDate AS "draftingDate"
        FROM practicMarks
        INNER JOIN practices ON
            practicMarks.practice_id = practices.id
        WHERE practices.student_id = ${userId} AND practices.page = '${practiceTables[num]}'
        `)
        
        for (let i = 0; i < practices.length; i++){
            result.practices[i] = practices[i]
        }
        return result
    },
    certification : async (userId, num, db) => {
        const certificationPages = {28 : 1, 34 : 2}
        let result = {examenations : new Array(9).fill({})}
        let examenations = db.query(`
        SELECT certifications.name AS "examName",
        certifications.draftingDate AS "draftingDate"
        FROM certifications
        WHERE certifications.student_id = ${userId} AND certifications.page = '${certificationPages[num]}'
        `)
        for (let i = 0; i < examenations.length; i++){
            result.examenations[i] = examenations[i]
        }
        return result
    },
    examinationTable : async (userId, num, db) => {
        const certificationPages = {29 : 1, 35 : 2}
        //faculties.dean_name || ' ' || faculties.dean_lastname || ' ' || faculties.dean_fathername AS "facultyDean"
        let mainInf = await db.query(`
        SELECT students.first_name AS "studentName",
            students.last_name AS "studentSurname",
            students.father_name AS "studentFathername",
            faculties.dean_name || ' ' || faculties.dean_lastname || ' ' || faculties.dean_fathername AS "facultyDean"
        FROM students 
        INNER JOIN groups ON
            students.group_id = groups.id
        INNER JOIN faculties ON
            groups.faculty_id = faculties.id
        WHERE students.id = ${userId}
        `)
        let result = {...mainInf[0]}
        result.examenations = new Array(9).fill({})
        
        let examenations = await db.query(`
        SELECT certifications.mark100 AS "mark100",
            certifications.markwords AS "markWords"
        FROM certifications
        WHERE certifications.student_id = ${userId} AND certifications.page = '${certificationPages[num]}'
        `)
        for (let i = 0; i < examenations.length; i++){
            result.examenations[i] = examenations[i]
        }
        return result

    },
    // {"name" : "degreeProject",
    //         "number" : 30,
    //         "studentName" : "Богдан",
    //         "studentSurname" : "Шмалько",
    //         "studentFathername" : "Ігорович",
    //         "topic" : "web is cool",
    //         "courseSupervisor" : "Якийсь мужик", !!!!
    //         "projectSubmissionDate" : "02.03.2021",
    //         "protectionDate" : "19.03.2021",
    //         "mark100" : "97",
    //         "markWords" : "відмінно",
    //         first : !!!
    //          second :  !!!
    //          third  !!
    degreeProject : async (userId, num, db) =>{
        const degreeProjectPages = {30:1, 36:2}
        
        let student = await db.query(`
        SELECT students.first_name AS "studentName",
            students.last_name AS "studentSurname",
            students.father_name AS "studentFathername"
        FROM students WHERE students.id = ${userId}
        `)

        let project = await db.query(`
        SELECT id AS "id",
        topic AS "topic",
        project_submission_date AS "projectSubmissionDate",
        protection_date AS "protectionDate",
        mark100 AS "mark100",
        markwords AS "markWords"
        FROM degreeprojects WHERE 
        degreeprojects.student_id = ${userId} AND degreeprojects.page = '${degreeProjectPages[num]}'
        `)
        if(!project[0]) return {
            ...student[0]
        }

        let first = await db.query(`SELECT teachers.first_name || ' ' || teachers.last_name
         || ' ' || teachers.futher_name AS "first"
         FROM checked
         INNER JOIN teachers ON
            checked.teacher_id = teachers.id
        WHERE checked.degreeproject_id = ${project[0].id} AND checked.teacher_status = 'first'
        `)
        if(first[0] == {}) first = [{first: ""}]

        let second = await db.query(`SELECT teachers.first_name || ' ' || teachers.last_name
        || ' ' || teachers.futher_name AS "second"
        FROM checked
        INNER JOIN teachers ON
           checked.teacher_id = teachers.id
       WHERE checked.degreeproject_id = ${project[0].id} AND checked.teacher_status = 'second'`)
       if(second[0] == {}) second = [{second: ""}]

        let third = await db.query(`SELECT teachers.first_name || ' ' || teachers.last_name
        || ' ' || teachers.futher_name AS "third"
        FROM checked
        INNER JOIN teachers ON
           checked.teacher_id = teachers.id
       WHERE checked.degreeproject_id = ${project[0].id} AND checked.teacher_status = 'third'`)
       if(third[0] == {}) third = [{third: ""}]

       let head = await db.query(`SELECT teachers.first_name || ' ' || teachers.last_name
        || ' ' || teachers.futher_name AS "courseSupervisor"
        FROM checked
        INNER JOIN teachers ON
           checked.teacher_id = teachers.id
       WHERE checked.degreeproject_id = ${project[0].id} AND checked.teacher_status = 'head'`)
       if(head == {}) head = [{head: ""}]

        return {
            ...student[0],
            ...project[0],
            ...first[0],
            ...second[0],
            ...third[0],
            ...head[0]
        }
    },

    decisionExaminationCommission : async (userId, num, db) =>{
        const degreeProjectPages = {31:1, 37:2}

        //faculties.dean_name || ' ' || faculties.dean_lastname || ' ' || faculties.dean_fathername AS "facultyDean"
        let student = await db.query(`
        SELECT students.first_name AS "studentName",
            students.last_name AS "studentSurname",
            students.father_name AS "studentFathername",
            faculties.dean_name || ' ' || faculties.dean_lastname || ' ' || faculties.dean_fathername AS "facultyDean"
        FROM students 
        INNER JOIN groups ON
           students.group_id = groups.id
        INNER JOIN faculties ON
           groups.faculty_id = faculties.id
        WHERE students.id = ${userId}
        `)


        let project = await db.query(`
        SELECT id AS "id",
        honors AS "honors",
        decisionNumber AS "decisionNumber",
        from_date AS "fromDate",
        date_end AS "date",
        notes AS "notes"
        FROM degreeprojects WHERE 
        degreeprojects.student_id = ${userId} AND degreeprojects.page = '${degreeProjectPages[num]}'
        `)

        if(!project[0]) return {
            ...student[0]
        }

        let first = await db.query(`SELECT teachers.first_name || ' ' || teachers.last_name
         || ' ' || teachers.futher_name AS "first"
         FROM checked
         INNER JOIN teachers ON
            checked.teacher_id = teachers.id
        WHERE checked.degreeproject_id = ${project[0].id} AND checked.teacher_status = 'first'
        `)
        if(first[0] == {}) first = [{first: ""}]

        let second = await db.query(`SELECT teachers.first_name || ' ' || teachers.last_name
        || ' ' || teachers.futher_name AS "second"
        FROM checked
        INNER JOIN teachers ON
           checked.teacher_id = teachers.id
       WHERE checked.degreeproject_id = ${project[0].id} AND checked.teacher_status = 'second'`)
       if(second[0] == {}) second = [{second: ""}]

        let third = await db.query(`SELECT teachers.first_name || ' ' || teachers.last_name
        || ' ' || teachers.futher_name AS "third"
        FROM checked
        INNER JOIN teachers ON
           checked.teacher_id = teachers.id
       WHERE checked.degreeproject_id = ${project[0].id} AND checked.teacher_status = 'third'`)
       if(third[0] == {}) third = [{third: ""}]

       let head = await db.query(`SELECT teachers.first_name || ' ' || teachers.last_name
        || ' ' || teachers.futher_name AS "courseSupervisor"
        FROM checked
        INNER JOIN teachers ON
           checked.teacher_id = teachers.id
       WHERE checked.degreeproject_id = ${project[0].id} AND checked.teacher_status = 'head'`)
       if(head == {}) head = [{head: ""}]

       return {
        ...student[0],
        ...project[0],
        ...first[0],
        ...second[0],
        ...third[0],
        ...head[0]
    }
    }
}

module.exports = SQL