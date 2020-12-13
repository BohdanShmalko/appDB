import React from 'react'
import s from './StudentsInf.module.css'

const StudentsInf = ({page}) =>{
    return <div className={`${s.studentsInf} , bookHeight`}>
        {page.educationalInstitution}
        <div className={s.mainInf}>
            <div className={s.photo}>
                <img src={page.photo}/>
            </div>
            <div className={s.inf}>
                <div className={`${s.number} , upper`}><b>Залікова книжка №{page.gradebookNumber} студента</b></div>
                <div className={s.infWrapper}>
                    <div>Прізвище, ім’я, по батькові : {page.studentName} {page.studentSurname} {page.studentFathername}</div>
                    <div>Факультет : {page.faculty}</div>
                    <div>Напрям підготовки : {page.trainingDirection}</div>
                    <div>Спеціальність : {page.specialty}</div>
                    <div>Рівень вищої освіти/Освітньо-кваліфікаційний рівень : {page.qualification}</div>
                    <div>Форма навчання : {page.studyForm}</div>
                    <div>Вступив(ла) на {page.admissionCourse} курс, з {page.admissionYear.substr(0,10)}</div>
                    <div>Проректор з навчальної роботи : {page.educationalViceRector}</div>
                    <div>Декан факультету : {page.facultyDean}</div>
                    <div>Дата видачі залікової книжки : {page.issueDate.substr(0,10)}</div>
                </div>
            </div>
        </div>
    </div>
}



export default StudentsInf