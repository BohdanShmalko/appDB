import React from 'react'
import s from './DecisionExaminationCommission.module.css'

const DecisionExaminationCommission = ({page}) =>{
    return <div className={`${s.decisionExaminationCommission} , bookHeight`}>
        <div className={s.free}></div>
        <div><b>Рішення екзаменаційної комісії</b></div>
        <div className={s.wrapper}>
            <div>{page.notes}</div>
            <div>Голова : {page.headName} {page.headSurname} {page.headFathername}</div>
            <div>Члени :</div>
            <div>1) {page.firstName} {page.firstSurname} {page.firstFathername}</div>
            <div>2) {page.secondName} {page.secondSurname} {page.secondFathername}</div>
            <div>3) {page.thirdName} {page.thirdSurname} {page.thirdFathername}</div>
            <div>Дата : {page.date} року</div>
            <div>{page.studentName} {page.studentSurname} {page.studentFathername} видано диплом {page.honor}</div>
            <div>№{page.decisionNumber} від {page.fromDate} року</div>
            <div>Особа що видала диплом : {page.issuer}</div>
            <div><b>Декан факультету</b> {page.facultyDean}</div>
        </div>
    </div>
}



export default DecisionExaminationCommission