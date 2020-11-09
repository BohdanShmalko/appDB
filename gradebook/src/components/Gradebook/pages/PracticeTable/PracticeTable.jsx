import React from 'react'
import s from './PracticeTable.module.css'

const PracticeTable = ({page}) =>{

    const allPractice = page.practices.map((practice,index) => <tr>
            <td>{index+1}</td>
            <td>{practice.practiceName}</td>
            <td>{practice.course}</td>
            <td>{practice.wherePractice}</td>
            <td>{practice.position}</td>
        </tr>)

    return <div className={`${s.practiceTable} , bookHeight`}>
        <div className={s.free}></div>
        <table>
            <tr>
                <th>№ з/п </th>
                <th>Назва практики </th>
                <th>Курс</th>
                <th>Місце проходження практики</th>
                <th>Ким працював</th>
            </tr>
            {allPractice}
        </table>
    </div>
}



export default PracticeTable