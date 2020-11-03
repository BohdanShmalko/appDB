import React from 'react'
import s from './Practice.module.css'

const Practice = ({page}) =>{

    const allMarks = page.practices.map(mark => <tr>
            <td>{mark.beginData ? mark.beginData : "."}</td>
            <td>{mark.finishData}</td>
            <td>{mark.supervisor}</td>
            <td>{mark.mark100}</td>
            <td>{mark.markWords}</td>
            <td>{mark.draftingDate}</td>
        </tr>)

    return <div className={`${s.practice} , bookHeight`}>
        <div className={s.student}>Прізвище, ім’я, по батькові : {page.studentName} {page.studentSurname} {page.studentFathername}</div>
        <div className={`${s.pageName} , upper`}>Практика</div>
        <table>
            <tr>
                <th colSpan="2">Тривалість практики</th>
                <th rowSpan="2">Прізвище та ініціали викладача, керівника практики</th>
                <th colSpan="2">Відмітки про залік</th>
                <th rowSpan="2">Дата складання заліку</th>
            </tr>

            <tr>
                <th>від (дата)</th>
                <th>до (дата)</th>
                <th>кількість балів</th>
                <th>за національною шкалою</th>
            </tr>

            {allMarks}
        </table>
    </div>
}



export default Practice