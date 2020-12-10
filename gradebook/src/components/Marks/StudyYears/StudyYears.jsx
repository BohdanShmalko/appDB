import React from 'react'
import s from './StudyYears.module.css'

const StudyYears = ({years, funcs}) =>{
    const {changeActiveYear, changeActiveSubject, changeActiveGroup, saveMarks, changeMark} = funcs

    const saveAllMarks = students => {
        const simpleStudents = students.map(student => ({
            idEvaluation : student.id,
            mark : student.mark
        }))
        saveMarks(simpleStudents)
    }

    const onChangeInp = (e, y, su, g, s) => {
        changeMark(y, su, g, s, e.target.value)
    }
    return <div className={s.studyYear}>
        <ul>
            <div><b>Years of study: </b></div>
            {years.map((year, indexY) => <li>
                <span onClick={() => changeActiveYear(indexY)}>{year.studyYear.substr(0, 4)}-{Number(year.studyYear.substr(0, 4))+1}</span>
                <ul>
                    {year.isActive && <div><b>Subjects :</b></div>}
                    {year.isActive &&  year.subjects.map((subject, indexS) => <li>
                        <span onClick={() => changeActiveSubject(indexY, indexS)}>{subject.subjectName}</span>
                        <ul>
                            {subject.isActive && <div><b>Groups :</b></div>}
                            {subject.isActive && subject.groups.map((group, indexG) => <li>
                                <span onClick={() => changeActiveGroup(indexY, indexS, indexG)}>{group.name}</span>
                                <ul>
                                    {group.isActive && <li>
                                        <table>
                                            <tr>
                                                <th>Student</th>
                                                <th>Mark</th>
                                            </tr>
                                            {group.students.map((student, stI) => <tr>
                                                <td>{`${student.surName} ${student.name} ${student.fatherName}`}</td>
                                                <td><input value={student.mark} onChange={e => onChangeInp(e, indexY, indexS, indexG, stI)}/></td>
                                            </tr>)}
                                        </table>
                                        <button onClick={() => saveAllMarks(group.students) }
                                                className={s.send}>
                                            Save
                                        </button>
                                    </li>}
                                </ul>
                            </li>)}
                        </ul>
                    </li>)}
                </ul>
            </li>)}
        </ul>
    </div>
}



export default StudyYears