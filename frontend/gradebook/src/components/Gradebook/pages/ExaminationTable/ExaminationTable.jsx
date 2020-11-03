import React from 'react'
import s from './ExaminationTable.module.css'

const ExaminationTable = ({page}) =>{

    const allMarks = page.examenations.map(mark => <tr>
            <td>{mark.mark100 ? mark.mark100 : "."}</td>
            <td>{mark.markWords}</td>
            <td>{mark.сommissionMembers}</td>
        </tr>)



    return <div className={`${s.examinationTable} , bookHeight`}>
        <div className={s.student}>Прізвище, ім’я, по батькові : {page.studentName} {page.studentSurname} {page.studentFathername}</div>

        <table>
            <tr>
                <th colSpan="2">Екзаменаційні оцінки </th>
                <th rowSpan="2">Члени екзаменаційної комісії</th>
            </tr>

            <tr>
                <th>кількість балів</th>
                <th>за національною шкалою</th>
            </tr>
            {allMarks}
        </table>

        <div className={s.dean}><b>Декан факультету</b> : {page.facultyDean}</div>
    </div>
}



export default ExaminationTable