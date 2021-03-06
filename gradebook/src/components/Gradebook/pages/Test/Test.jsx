import React from 'react'
import s from './Test.module.css'

const Test = ({page}) =>{

    const allMarks = page.marks.map((mark,index) => <tr>
            <td>{index+1}</td>
            <td>{mark.subject}</td>
            <td>{mark.hours}</td>
            <td>{mark.loans}</td>
            <td>{mark.teacher}</td>
            <td>{mark.mark100}</td>
            <td>{mark.markWords}</td>
            <td>{mark.draftingDate}</td>
        </tr>)

    return <div className={`${s.test} , bookHeight`}>
        <div className={s.date}>{page.semester}-й семестр {page.beginYear}-{page.finishYear} навчального року</div>
        <div className={`${s.formAtestation} , upper`}><b>Заліки</b></div>
        <div className={s.marks}>
            <table>
                <tr>
                    <th rowSpan="2">№ з/п</th>
                    <th rowSpan="2">Назва навчальної дисципліни</th>
                    <th colSpan="2">Кількість</th>
                    <th rowSpan="2">Прізвище та ініціали викладача</th>
                    <th colSpan="2">Відмітки про залік</th>
                    <th rowSpan="2">Дата</th>
                </tr>
                <tr>
                    <th>годин</th>
                    <th>кредитів</th>
                    <th>кількість балів</th>
                    <th>за національною шкалою </th>
                </tr>
                {allMarks}
            </table>
        </div>
    </div>
}



export default Test