import React from 'react'
import s from './StudyYears.module.css'

const StudyYears = ({years, funcs}) =>{
    const {changeActiveYear, changeActiveSubject, changeActiveGroup, saveMarks} = funcs

    const saveAllMarks = (year, subject, group, students) => {
        const simpleStudents = students.map(student => ({
            id : student.id,
            mark : student.mark
        }))
        const sendChange = {
            year, subject, group,
            students : simpleStudents
        }

        saveMarks(sendChange)
    }
    return <div className={s.studyYear}>
        <ul>
            <div><b>Роки навчання :</b></div>
            {years.map((year, indexY) => <li>
                <span onClick={() => changeActiveYear(indexY)}>{year.studyYear}</span>
                <ul>
                    {year.isActive && <div><b>Предмети :</b></div>}
                    {year.isActive &&  year.subjects.map((subject, indexS) => <li>
                        <span onClick={() => changeActiveSubject(indexY, indexS)}>{subject.subjectName}</span>
                        <ul>
                            {subject.isActive && <div><b>Групи :</b></div>}
                            {subject.isActive && subject.groups.map((group, indexG) => <li>
                                <span onClick={() => changeActiveGroup(indexY, indexS, indexG)}>{group.name}</span>
                                <ul>
                                    {group.isActive && <li>
                                        <table>
                                            <tr>
                                                <th>Студент</th>
                                                <th>Оцінка</th>
                                            </tr>
                                            {group.students.map(student => <tr>
                                                <td>{student.name}</td>
                                                <td><input value={student.mark}/></td>
                                            </tr>)}
                                        </table>
                                        <button onClick={() => saveAllMarks(year.studyYear, subject.subjectName, group.name, group.students) }
                                                className={s.send}>
                                            Зберегти
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