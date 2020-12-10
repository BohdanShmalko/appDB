import React from 'react'
import s from './DegreeProject.module.css'

const DegreeProject = ({page}) =>{
    return <div className={`${s.degreeProject} , bookHeight`}>
        <div className={s.free}></div>
        <div className={s.wrapper}>
            <div className={`${s.name} , upper`}><b>ДИПЛОМНИЙ ПРОЕКТ (РОБОТА)</b></div>
        <div className={s.student}>Прізвище, ім’я, по батькові : {page.studentName} {page.studentSurname} {page.studentFathername}</div>
        <div className={s.main}>
            <div>Тема проекту (роботи) : {page.topic}</div>
            <div>Прізвище керівника : {page.courseSupervisor}</div>
            <div>Дата подання проекту (роботи) у деканат (відділення) : {page.projectSubmissionDate}</div>
            <div>Дата захисту роботи : {page.protectionDate}</div>
            <div>Оцінка екзаменаційної комісії: {page.markWords}</div>
            <div>кількість балів : {page.mark100}</div>
            <div>за національною шкалою : {page.markWords}</div>
            <div> Члени екзаменаційної комісії : {page.first}, {page.second}, {page.third}</div>
        </div>
        </div>
    </div>
}



export default DegreeProject