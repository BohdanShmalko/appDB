import React from 'react'
import s from './Schedule.module.css'
import Table from "./Table/Table";

const Schedule = ({schedule, changeCurrentInp, changeSchedule}) =>{

    const inp = React.createRef();
    const changeInp = () => changeCurrentInp(inp.current.value)
    const getSchedule = () => changeSchedule(schedule.currentInp)

    return <div className={s.schedule}>
        <span>Enter the name of the group, or the name and initials of the teacher whose schedule you want to know: </span>
        <input ref = {inp} value = {schedule.currentInp} onChange={changeInp}/> <button onClick={getSchedule}>Ok</button>
        {schedule.name !== "" && <div>You are viewing the schedule <b>{schedule.name}</b></div>}
        <div><b>The first week</b></div>
        <Table data = {schedule.first} clickFunc = {changeSchedule} status = {schedule.status}/>
        <div><b>The second week</b></div>
        <Table data = {schedule.second} clickFunc = {changeSchedule} status = {schedule.status}/>
    </div>
}



export default Schedule