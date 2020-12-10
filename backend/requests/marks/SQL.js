const SQL = {
    getMarks : async (userId, db) => {
        let years = await db.query(`
        SELECT evaluations.beginning_semester AS "studyYear",
            array_agg(evaluations.id) AS "marks"
        FROM evaluations
        WHERE evaluations.teacher_id = ${userId}
        GROUP BY evaluations.beginning_semester;
        `)
        let result = []
        for(let y = 0; y < years.length; y++){
            result[y] = {studyYear: years[y].studyYear, isActive : false, subjects: []}
            let subjects = {}
            let studentsInf = []
            //let count = 0;
            for(let s = 0; s < years[y].marks.length; s++){
                let student = await db.query(`
                    SELECT groups.name AS "group",
                        evaluations.id AS "id",
                        students.first_name AS "name",
                        students.last_name AS "surName",
                        students.father_name AS "fatherName",
                        evaluations.mark100 AS "mark",
                        subjects.name AS "subject"
                    FROM evaluations
                    INNER JOIN students ON
                        evaluations.student_id = students.id
                    INNER JOIN groups ON
                        students.group_id = groups.id
                    INNER JOIN subjects ON
                        evaluations.subject_id = subjects.id
                    WHERE evaluations.id = ${years[y].marks[s]};
                `)
                let inf = student[0]
                studentsInf.push(inf)
                if(!subjects[inf.subject]) subjects[inf.subject] = [studentsInf.length-1]
                else subjects[inf.subject].push(studentsInf.length-1)
            }
            let i = 0;
            let groups = {}
            for(let key in subjects) {
                result[y].subjects[i] = {subjectName : key, isActive : false, groups : []}
                
                subjects[key].forEach(e => {
                    if(!groups[studentsInf[e].group]) groups[studentsInf[e].group] = [e]
                    else groups[studentsInf[e].group].push(e)
                });
                let j = 0;
                for(let keyG in groups){
                    result[y].subjects[i].groups[j] = {name : keyG, isActive : false, students : []}
                    for(let k = 0; k < groups[keyG].length; k++){
                        result[y].subjects[i].groups[j].students[k] = studentsInf[groups[keyG][k]]
                    }
                    j++
                }
                groups = {}
                i++
            }
        }
        return result
    },
    saveMarks : async (inf, db) => {
        for(let i = 0; i < inf.length; i++){
            let student = await db.query(`UPDATE evaluations SET mark100 = '${inf[i].mark}' WHERE id = ${inf[i].idEvaluation};`)
        }
        return "ok"
    }
}

module.exports = SQL