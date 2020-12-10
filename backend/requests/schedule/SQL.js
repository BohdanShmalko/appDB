let pairGroupSkeleton = {
    subject : "",
    teacherName : "",
    teacherSurname : "",
    teacherFutherName : "",
    corps : "",
    audience : ""
}

let pairTeacherSkeleton = {
    subject : "",
    group : "",
    corps : "",
    audience : ""
}

const weekSkeleton = obj => ({
    monday : new Array(5).fill({...obj}),
    tuesday : new Array(5).fill({...obj}),
    wednesday : new Array(5).fill({...obj}),
    thursday : new Array(5).fill({...obj}),
    friday : new Array(5).fill({...obj}),
    saturday : new Array(5).fill({...obj})
})

const schedule = (obj, status) => ({
    status,
    first : {...weekSkeleton(obj)},
    second : {...weekSkeleton(obj)}
})

const getWeek = async (week, name, db) => {
    let interprete = {first: 1, second: 2}
    let parseValue = name.split(" ")
    if(parseValue.length == 1){
        let result = schedule(pairGroupSkeleton, "Teacher")
        let practices = await db.query(`
        SELECT subjects.name AS "subject",
            teachers.first_name AS "teacherName",
            teachers.last_name AS "teacherSurname",
            teachers.futher_name AS "teacherFutherName",
            places.corps AS "corps",
            places.audience AS "audience",
            hours.pair_number AS "pairNumber",
            days.day AS "day"
        FROM schedules
        INNER JOIN subjects ON
            schedules.subject_id = subjects.id
        INNER JOIN teachers ON
            schedules.teacher_id = teachers.id
        INNER JOIN places ON
            schedules.place_id = places.id
        INNER JOIN hours ON
            schedules.hour_id = hours.id
        INNER JOIN groups ON
            schedules.group_id = groups.id
        INNER JOIN days ON
            schedules.day_id = days.id
        WHERE groups.name = '${name}' AND days.study_week = '${interprete[week]}'
        `)
        for(let i = 0; i < practices.length; i++){
            let {subject, teacherName, teacherSurname, teacherFutherName, corps,
                 audience, pairNumber, day} = practices[i]
            result[week][day][pairNumber] = {subject, teacherName, teacherSurname, teacherFutherName, corps, audience}
        }
        return result
    }else if(parseValue.length >= 3){
        let result = schedule(pairTeacherSkeleton, "Group")
        let practices = await db.query(`
        SELECT subjects.name AS "subject",
            groups.name AS "group",
            places.corps AS "corps",
            places.audience AS "audience",
            hours.pair_number AS "pairNumber",
            days.day AS "day"
        FROM schedules
        INNER JOIN subjects ON
            schedules.subject_id = subjects.id
        INNER JOIN teachers ON
            schedules.teacher_id = teachers.id
        INNER JOIN places ON
            schedules.place_id = places.id
        INNER JOIN hours ON
            schedules.hour_id = hours.id
        INNER JOIN groups ON
            schedules.group_id = groups.id
        INNER JOIN days ON
            schedules.day_id = days.id
        WHERE teachers.last_name = '${parseValue[0]}' AND
            teachers.first_name LIKE '${parseValue[1][0]}%' AND
            teachers.futher_name LIKE '${parseValue[2][0]}%' AND
            days.study_week = '${interprete[week]}'
        `)
        for(let i = 0; i < practices.length; i++){
            let {subject, group, corps,
                 audience, pairNumber, day} = practices[i]
            result[week][day][pairNumber] = {subject, group, corps, audience}
        }
        return result
    }else return "error data"
}

const getSchedule = async (name, db) => {
    let firstWeek = await getWeek("first", name, db)
    let secondWeek = await getWeek("second", name, db)
    return {
        status : firstWeek.status,
        first : firstWeek.first,
        second : secondWeek.second
    }
}

module.exports = getSchedule