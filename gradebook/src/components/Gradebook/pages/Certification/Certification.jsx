import React from 'react'
import s from './Certification.module.css'

const Certification = ({page}) =>{

    const allMarks = page.examenations.map((mark,index)=> <tr>
            <td>{index+1}</td>
            <td>{mark.examName}</td>
            <td>{mark.draftingDate}</td>
        </tr>)

    return <div className={`${s.certification} , bookHeight`}>
        <div className={s.free}></div>
        <div className={`${s.name} , upper`}><b>АТЕСТАЦІЯ</b></div>
        <table>
            <tr>
                <th>№ з/п </th>
                <th>Назва екзамену</th>
                <th>Дата складання екзамену</th>
            </tr>
            {allMarks}
        </table>
    </div>
}



export default Certification