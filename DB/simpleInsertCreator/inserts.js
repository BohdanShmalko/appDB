const Days = {
    name : "days",
    inserts : ["day", "study_week"],
    values : [
        ["'monday'", "'1'"],
        ["'tuesday'", "'1'"],
        ["'wednesday'", "'1'"],
        ["'thursday'", "'1'"],
        ["'friday'", "'1'"],
        ["'saturday'", "'1'"],
        ["'monday'", "'2'"],
        ["'tuesday'", "'2'"],
        ["'wednesday'", "'2'"],
        ["'thursday'", "'2'"],
        ["'friday'", "'2'"],
        ["'saturday'", "'2'"]
    ]
}

const Teachers =  {
    name : "teachers",
    inserts : ["first_name" , "last_name", "futher_name", "department", "salary", "qualification_level", "contract_termination"],
    values : [
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)],
        [random(firstName), random(lastName), random(fatherName), random(department), random(money), random(qualification_level), random(rDate)]
    ]
}
const Subjects =  {
    name : "subjects",
    inserts : ["name", "description", "loans", "hours", "occupation_type"],
    values : [
        [random(subject), notes[0], random(loans), random(loans), random(occupation_types)],
        [random(subject), notes[0], random(loans), random(loans), random(occupation_types)],
        [random(subject), notes[0], random(loans), random(loans), random(occupation_types)],
        [random(subject), notes[0], random(loans), random(loans), random(occupation_types)],
        [random(subject), notes[0], random(loans), random(loans), random(occupation_types)],
        [random(subject), notes[0], random(loans), random(loans), random(occupation_types)],
        [random(subject), notes[0], random(loans), random(loans), random(occupation_types)],
        [random(subject), notes[0], random(loans), random(loans), random(occupation_types)],
        [random(subject), notes[0], random(loans), random(loans), random(occupation_types)],
        [random(subject), notes[0], random(loans), random(loans), random(occupation_types)]
    ]
}
const Hours =  {
    name : "hours",
    inserts : ["pair_number", "beginning", "ending"],
    values : [
        [1, "'8:30'", "'10:05'"],
        [2, "'10:25'", "'12:00'"],
        [3, "'12:20'", "'13:55'"],
        [4, "'14:15'", "'15:50'"],
        [5, "'16:10'", "'17:45'"]
    ]
}
const Places =  {
    name : "places",
    inserts : ["corps", "audience"],
    values : [
        [random(corps), random(audience)],
        [random(corps), random(audience)],
        [random(corps), random(audience)],
        [random(corps), random(audience)],
        [random(corps), random(audience)],
        [random(corps), random(audience)],
        [random(corps), random(audience)],
        [random(corps), random(audience)],
        [random(corps), random(audience)],
        [random(corps), random(audience)]
    ]
}
const Gradebooks =  {
    name : "gradebooks",
    inserts : ["number", "issueDate"],
    values : [
        [gradebook[0], random(rDate)],
        [gradebook[1], random(rDate)],
        [gradebook[2], random(rDate)],
        [gradebook[3], random(rDate)],
        [gradebook[4], random(rDate)],
        [gradebook[5], random(rDate)],
        [gradebook[6], random(rDate)],
        [gradebook[7], random(rDate)],
        [gradebook[8], random(rDate)],
        [gradebook[9], random(rDate)],
        [gradebook[10], random(rDate)],
        [gradebook[11], random(rDate)],
        [gradebook[12], random(rDate)],
        [gradebook[13], random(rDate)],
        [gradebook[14], random(rDate)],
        [gradebook[15], random(rDate)],
        [gradebook[16], random(rDate)],
        [gradebook[17], random(rDate)],
        [gradebook[18], random(rDate)],
        [gradebook[19], random(rDate)]
    ]
}
const Faculties =  {
    name : "faculties",
    inserts : ["name", "dean_name", "dean_lastname", "dean_fathername"],
    values : [
        [faculty[0], random(firstName), random(lastName), random(fatherName)],
        [faculty[1], random(firstName), random(lastName), random(fatherName)],
        [faculty[2], random(firstName), random(lastName), random(fatherName)],
        [faculty[3], random(firstName), random(lastName), random(fatherName)],
        [faculty[4], random(firstName), random(lastName), random(fatherName)],
        [faculty[5], random(firstName), random(lastName), random(fatherName)]
    ]
}
const Institutes =  {
    name : "institutes",
    inserts : ["name", "rector_name", "rector_lastname", "rector_fathername"],
    values : [
        [institute[0], random(firstName), random(lastName), random(fatherName)],
        [institute[1], random(firstName), random(lastName), random(fatherName)]
    ]
}
const Groups =  {
    name : "groups",
    inserts : ["name", "specialty", "creation", "course", "training_direction", "education_level", "qualification", "admissionCourse", "institute_id", "faculty_id", "curator_id"],
    values : [
        [group[0], random(specialty), random(rDate), random(course), random(training_direction), random(education_level), random(qualification), random(admissionCourse), random(foregn), random(foregn), random(foregn)],
        [group[1], random(specialty), random(rDate), random(course), random(training_direction), random(education_level), random(qualification), random(admissionCourse), random(foregn), random(foregn), random(foregn)],
        [group[2], random(specialty), random(rDate), random(course), random(training_direction), random(education_level), random(qualification), random(admissionCourse), random(foregn), random(foregn), random(foregn)],
        [group[3], random(specialty), random(rDate), random(course), random(training_direction), random(education_level), random(qualification), random(admissionCourse), random(foregn), random(foregn), random(foregn)],
        [group[4], random(specialty), random(rDate), random(course), random(training_direction), random(education_level), random(qualification), random(admissionCourse), random(foregn), random(foregn), random(foregn)],
        [group[5], random(specialty), random(rDate), random(course), random(training_direction), random(education_level), random(qualification), random(admissionCourse), random(foregn), random(foregn), random(foregn)],
        [group[6], random(specialty), random(rDate), random(course), random(training_direction), random(education_level), random(qualification), random(admissionCourse), random(foregn), random(foregn), random(foregn)],
        [group[7], random(specialty), random(rDate), random(course), random(training_direction), random(education_level), random(qualification), random(admissionCourse), random(foregn), random(foregn), random(foregn)],
        [group[8], random(specialty), random(rDate), random(course), random(training_direction), random(education_level), random(qualification), random(admissionCourse), random(foregn), random(foregn), random(foregn)],
        [group[9], random(specialty), random(rDate), random(course), random(training_direction), random(education_level), random(qualification), random(admissionCourse), random(foregn), random(foregn), random(foregn)]
    ]
}
const Schedule =  {
    name : "schedule",
    inserts : ["teacher_id", "subject_id", "group_id", "hour_id", "place_id", "day_id"],
    values : [
        [random(foregn),random(foregn),random(foregn),random(foregn),random(foregn),random(foregn)],
        [random(foregn),random(foregn),random(foregn),random(foregn),random(foregn),random(foregn)],
        [random(foregn),random(foregn),random(foregn),random(foregn),random(foregn),random(foregn)],
        [random(foregn),random(foregn),random(foregn),random(foregn),random(foregn),random(foregn)],
        [random(foregn),random(foregn),random(foregn),random(foregn),random(foregn),random(foregn)],
        [random(foregn),random(foregn),random(foregn),random(foregn),random(foregn),random(foregn)],
        [random(foregn),random(foregn),random(foregn),random(foregn),random(foregn),random(foregn)],
        [random(foregn),random(foregn),random(foregn),random(foregn),random(foregn),random(foregn)],
        [random(foregn),random(foregn),random(foregn),random(foregn),random(foregn),random(foregn)],
        [random(foregn),random(foregn),random(foregn),random(foregn),random(foregn),random(foregn)]
    ]
}
const Students =  {
    name : "students",
    inserts : ["id", "first_name", "last_name", "father_name", "scholarship", "education_form", "status", "birth_day", "photoURL", "group_id", "gradebook_id"],
    values : [
        [1, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [2, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [3, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [4, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [5, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [6, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [7, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [8, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [9, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [10, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [11, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [12, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [13, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [14, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [15, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [16, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [17, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [18, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [19, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [20, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [21, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [22, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [23, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [24, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)],
        [25, random(firstName), random(lastName), random(fatherName), random(money), random(education_level), random(status), random(birdthDay), random(url), random(foregn), random(foregn)]
    ]
}
const Practices =  {
    name : "practices",
    inserts : ["name", "course", "place", "position", "page", "student_id"],
    values : [
        [random(subject), random(course), random(place), random(address), random(page), random(foregn)],
        [random(subject), random(course), random(place), random(address), random(page), random(foregn)],
        [random(subject), random(course), random(place), random(address), random(page), random(foregn)],
        [random(subject), random(course), random(place), random(address), random(page), random(foregn)],
        [random(subject), random(course), random(place), random(address), random(page), random(foregn)]
    ]
}
const PracticMarks =  {
    name : "practicMarks",
    inserts : ["beginData", "finishData", "supervisor", "mark100", "markwords", "draftingDate", "practice_id"],
    values : [
        [random(rDate), random(rDate), random(lastName), random(mark100), random(markWord), random(rDate), random(foregn)],
        [random(rDate), random(rDate), random(lastName), random(mark100), random(markWord), random(rDate), random(foregn)],
        [random(rDate), random(rDate), random(lastName), random(mark100), random(markWord), random(rDate), random(foregn)],
        [random(rDate), random(rDate), random(lastName), random(mark100), random(markWord), random(rDate), random(foregn)],
        [random(rDate), random(rDate), random(lastName), random(mark100), random(markWord), random(rDate), random(foregn)],
        [random(rDate), random(rDate), random(lastName), random(mark100), random(markWord), random(rDate), random(foregn)],
        [random(rDate), random(rDate), random(lastName), random(mark100), random(markWord), random(rDate), random(foregn)]
    ]
}
const Degreeprojects =  {
    name : "degreeprojects",
    inserts : ["topic", "project_submission_date ", "protection_date", "mark100", "markwords", "notes", "date_end", "honors", "decisionNumber", "from_date", "page", "student_id"],
    values : [
        [random(subject), random(rDate), random(rDate), random(mark100), random(markWord), random(notes), random(rDate), random(honors), random(gradebook), random(rDate), random(page), random(foregn)],
        [random(subject), random(rDate), random(rDate), random(mark100), random(markWord), random(notes), random(rDate), random(honors), random(gradebook), random(rDate), random(page), random(foregn)],
        [random(subject), random(rDate), random(rDate), random(mark100), random(markWord), random(notes), random(rDate), random(honors), random(gradebook), random(rDate), random(page), random(foregn)],
        [random(subject), random(rDate), random(rDate), random(mark100), random(markWord), random(notes), random(rDate), random(honors), random(gradebook), random(rDate), random(page), random(foregn)]
    ]
}
const Teachers_emails =  {
    name : "teachers_emails",
    inserts : ["email", "sign", "teacher_id"],
    values : [
        [random(email), random(sign), random(foregn)],
        [random(email), random(sign), random(foregn)],
        [random(email), random(sign), random(foregn)],
        [random(email), random(sign), random(foregn)],
        [random(email), random(sign), random(foregn)],
        [random(email), random(sign), random(foregn)],
        [random(email), random(sign), random(foregn)]
    ]
}
const Students_emails =  {
    name : "students_emails",
    inserts : ["email", "sign", "student_id"],
    values : [
        [random(email), random(sign), random(foregn)],
        [random(email), random(sign), random(foregn)],
        [random(email), random(sign), random(foregn)],
        [random(email), random(sign), random(foregn)],
        [random(email), random(sign), random(foregn)],
    ]
}
const Teachers_phones =  {
    name : "teachers_phones",
    inserts : ["phone_number", "sign", "teacher_id"],
    values : [
        [random(phone), random(sign), random(foregn)],
        [random(phone), random(sign), random(foregn)],
        [random(phone), random(sign), random(foregn)],
        [random(phone), random(sign), random(foregn)],
        [random(phone), random(sign), random(foregn)],
        [random(phone), random(sign), random(foregn)],
        [random(phone), random(sign), random(foregn)]
    ]
}
const Students_phones =  {
    name : "students_phones",
    inserts : ["phone_number", "sign", "student_id"],
    values : [
        [random(phone), random(sign), random(foregn)],
        [random(phone), random(sign), random(foregn)],
        [random(phone), random(sign), random(foregn)],
        [random(phone), random(sign), random(foregn)],
        [random(phone), random(sign), random(foregn)],
        [random(phone), random(sign), random(foregn)],
        [random(phone), random(sign), random(foregn)]
    ]
}
const Teachers_authentications =  {
    name : "teachers_authentications",
    inserts : ["login", "password", "teacher_id"],
    values : [
        [random(login), random(password), random(foregn)],
        [random(login), random(password), random(foregn)],
        [random(login), random(password), random(foregn)],
        [random(login), random(password), random(foregn)],
        [random(login), random(password), random(foregn)],
        [random(login), random(password), random(foregn)],
        [random(login), random(password), random(foregn)],
        [random(login), random(password), random(foregn)]
    ]
}
const Students_authentications =  {
    name : "students_authentications",
    inserts : ["login", "password", "student_id"],
    values : [
        [random(login), random(password), random(foregn)],
        [random(login), random(password), random(foregn)],
        [random(login), random(password), random(foregn)],
        [random(login), random(password), random(foregn)],
        [random(login), random(password), random(foregn)],
        [random(login), random(password), random(foregn)],
        [random(login), random(password), random(foregn)]
    ]
}
const Certifications =  {
    name : "certifications",
    inserts : ["teacher_status", "teacher_id", "certification_id"],
    values : [
        [random(teacher_status), random(foregn), random(foregn)],
        [random(teacher_status), random(foregn), random(foregn)],
        [random(teacher_status), random(foregn), random(foregn)],
        [random(teacher_status), random(foregn), random(foregn)],
        [random(teacher_status), random(foregn), random(foregn)]
    ]
}
const Checked =  {
    name : "checked",
    inserts : ["teacher_status", "teacher_id", "degreeproject_id"],
    values : [
        [random(teacher_status), random(foregn), random(foregn)],
        [random(teacher_status), random(foregn), random(foregn)],
        [random(teacher_status), random(foregn), random(foregn)],
        [random(teacher_status), random(foregn), random(foregn)],
        [random(teacher_status), random(foregn), random(foregn)],
    ]
}
const Evaluations =  {
    name : "evaluations",
    inserts : ["mark100", "markword", "certification_form", "assessment_date", "study_semester", "beginning_semester", "end_semester", "student_id", "subject_id", "teacher_id"],
    values : [
        [random(mark100), random(markWord), random(certification_form), random(rDate), random(course), random(rDate), random(rDate), random(foregn), random(foregn), random(foregn)],
        [random(mark100), random(markWord), random(certification_form), random(rDate), random(course), random(rDate), random(rDate), random(foregn), random(foregn), random(foregn)],
        [random(mark100), random(markWord), random(certification_form), random(rDate), random(course), random(rDate), random(rDate), random(foregn), random(foregn), random(foregn)],
        [random(mark100), random(markWord), random(certification_form), random(rDate), random(course), random(rDate), random(rDate), random(foregn), random(foregn), random(foregn)],
        [random(mark100), random(markWord), random(certification_form), random(rDate), random(course), random(rDate), random(rDate), random(foregn), random(foregn), random(foregn)]
    ]
}