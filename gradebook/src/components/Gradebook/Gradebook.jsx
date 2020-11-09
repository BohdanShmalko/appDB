import React from 'react'
import s from './Gradebook.module.css'
import Title from "./pages/Title/Title";
import StudentsInf from "./pages/StudentsInf/StudentsInf";
import Test from "./pages/Test/Test";
import Examination from "./pages/Examination/Examination";
import PracticeTable from "./pages/PracticeTable/PracticeTable";
import Practice from "./pages/Practice/Practice";
import Certification from "./pages/Certification/Certification";
import ExaminationTable from "./pages/ExaminationTable/ExaminationTable";
import DegreeProject from "./pages/DegreeProject/DegreeProject";
import DecisionExaminationCommission from "./pages/DecisionExaminationCommission/DecisionExaminationCommission";


const Gradebook = props =>{
    const {gradebook} = props
    const currentPage = () => {
        switch (gradebook.page.name) {
            case "title" : return <Title/>
            case "studentsInf" : return <StudentsInf page={gradebook.page}/>
            case "test" : return <Test page={gradebook.page}/>
            case "examination" : return <Examination page={gradebook.page}/>
            case "practiceTable" : return <PracticeTable page={gradebook.page}/>
            case "practice" : return <Practice page={gradebook.page}/>
            case "certification" : return <Certification page={gradebook.page}/>
            case "examinationTable" : return <ExaminationTable page={gradebook.page}/>
            case "degreeProject" : return <DegreeProject page={gradebook.page}/>
            case "decisionExaminationCommission" : return <DecisionExaminationCommission page={gradebook.page}/>
        }
    }

    const range = React.createRef();
    const rangeUp = () => {
        props.changePage(gradebook.currentPage)
    }
    const rangeChange = () => {
        props.changeCurrentPage(range.current.value)
    }

    return <div className={s.gradebook +" , center"}>
        <div className={s.book}>
            {currentPage()}
            <div className={s.navigation}>
                <div>page : {gradebook.currentPage}</div>
                <button disabled={gradebook.previousDisabled}
                        onClick={()=>props.changePage(gradebook.currentPage-1)}>previous</button>
                <input type='range' min = '0' max = '37' step = '1' value = {gradebook.currentPage}
                    ref = {range} onMouseUp={rangeUp} onChange={rangeChange}/>
                <button disabled={gradebook.nextDisabled}
                        onClick={()=>props.changePage(gradebook.currentPage+1)}>next</button>
            </div>
        </div>
    </div>
}



export default Gradebook