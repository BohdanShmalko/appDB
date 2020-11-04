import React from 'react'
import s from './Table.module.css'

const Table = ({data}) =>{

    const getDayData = (day, number) => {
        const dayObj = data[day]
        const hours = ["8:30-10:05", "10:25-12:00", "12:20-13:55", "14:15-15:50", "16:10-17:45"]

        return <>
            <td>{number+1}</td>
            <td>{hours[number]}</td>
            <td>{dayObj[number].subject}</td>
            <td>{dayObj[number].teacher}</td>
            <td>{dayObj[number].corps}</td>
            <td>{dayObj[number].audience}</td>
        </>
    }

    const getAllDays = () => {
        let fiveDays = []
        const daysUa = ["Понеділок", "Вівторок", "Середа", "Четвер", "П'ятниця", "Субота"]
        const daysEn = ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday"]
        for (let i = 0; i < 6; i++){
            for(let j = 0; j < 5; j++){
                if (j == 0) fiveDays.push(<tr>
                    <td rowSpan="5">{daysUa[i]}</td>
                    {getDayData(daysEn[i], j)}
                </tr>)
                else fiveDays.push(<tr>{getDayData(daysEn[i], j)}</tr>)
            }
        }
        return fiveDays
    }

    return <table className={s.table}>
            <tr>
                <th>День</th>
                <th>Пара</th>
                <th>Час</th>
                <th>Предмет</th>
                <th>Викладач</th>
                <th>Корпус</th>
                <th>Аудиторія</th>
            </tr>
        {getAllDays()}
        </table>
}



export default Table