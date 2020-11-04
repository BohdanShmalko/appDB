import React from 'react'
import s from './Schedule.module.css'
import Table from "./Table/Table";

const Schedule = ({schedule, changeCurrentInp, changeSchedule}) =>{

    const inp = React.createRef();
    const changeInp = () => changeCurrentInp(inp.current.value)
    const getSchedule = () => changeSchedule(schedule.currentInp)

    return <div className={s.schedule}>
        <span>Вкажіть назву групи, або Пізвище та ініціали викладача розклад якого хочете дізнатися : </span>
        <input ref = {inp} value = {schedule.currentInp} onChange={changeInp}/> <button onClick={getSchedule}>Ок</button>
        {schedule.name !== "" && <div>Ви переглядаєте розклад <b>{schedule.name}</b></div>}
        <div><b>Перший тиждень</b></div>
        <Table data = {schedule.first} clickFunc = {changeSchedule}/>
        <div><b>Другий тиждень</b></div>
        <Table data = {schedule.second} clickFunc = {changeSchedule}/>
    </div>
}



export default Schedule