import React from 'react'
import s from './Marks.module.css'
import StudyYears from "./StudyYears/StudyYears";

const Marks = ({marks, changeActiveYear, changeActiveSubject, changeActiveGroup, saveMarks}) =>{
    const funcs = {changeActiveYear, changeActiveSubject, changeActiveGroup, saveMarks}
    return <div className={s.marks}>
        <StudyYears years = {marks} funcs = {funcs}/>
    </div>
}



export default Marks