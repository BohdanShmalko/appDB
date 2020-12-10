const getUserId = async (login, password, db) => {
    let id = await db.query(`
    SELECT students_authentications.student_id AS "idS" FROM students_authentications
    WHERE students_authentications.login = '${login}' AND
        students_authentications.password = '${password}'`)
    if(id.length == 0) {
        let idT = await db.query(`
        SELECT teachers_authentications.teacher_id AS "idT" FROM teachers_authentications
        WHERE teachers_authentications.login = '${login}' AND
            teachers_authentications.password = '${password}'`)

        if(idT.length == 0) return {error : "bad email or password"}
        return {userId : idT[0].idT, isStudentAuthorize: false}
    }

    return {userId : id[0].idS, isStudentAuthorize: true}
}

module.exports = getUserId