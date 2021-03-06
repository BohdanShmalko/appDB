import React from 'react'
import s from './Table.module.css'

const Table = ({data, clickFunc, status}) =>{

    const getDayData = (day, number) => {
        const dayObj = data[day]
        const hours = ["8:30-10:05", "10:25-12:00", "12:20-13:55", "14:15-15:50", "16:10-17:45"]

        return <>
            <td>{number+1}</td>
            <td>{hours[number]}</td>
            <td>{dayObj[number].subject}</td>

            {dayObj[number].teacherName != "" && status == "Teacher" &&
            <td><span onClick={() => {clickFunc(`${dayObj[number].teacherSurname} ${dayObj[number].teacherName} ${dayObj[number].teacherFutherName}`)}}>
                    {dayObj[number].teacherSurname} {dayObj[number].teacherName} {dayObj[number].teacherFutherName}</span></td>}
            {dayObj[number].teacherName == "" && status == "Teacher" && <td></td>}
            {dayObj[number].group != "" && status == "Group" &&
            <td><span onClick={() => {clickFunc(dayObj[number].group)}}>
                    {dayObj[number].group}</span></td>}

            {dayObj[number].group == "" && status == "Group" && <td></td>}

            <td>{dayObj[number].corps}</td>
            <td>{dayObj[number].audience}</td>
        </>
    }

    const getAllDays = () => {
        let fiveDays = []
        const daysEn = ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday"]
        for (let i = 0; i < 6; i++){
            for(let j = 0; j < 5; j++){
                if (j == 0) fiveDays.push(<tr>
                    <td rowSpan="5">{daysEn[i]}</td>
                    {getDayData(daysEn[i], j)}
                </tr>)
                else fiveDays.push(<tr>{getDayData(daysEn[i], j)}</tr>)
            }
        }
        return fiveDays
    }

    return <table className={s.table}>
            <tr>
                <th>Day</th>
                <th>Pair</th>
                <th>Time</th>
                <th> Subject </th>
                <th> {status} </th>
                <th> Corpuse </th>
                <th> Audience </th>
            </tr>
        {getAllDays()}
        </table>
}



export default Table