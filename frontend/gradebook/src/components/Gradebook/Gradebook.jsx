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

const gradebook = {
    currentPage : 31,
    page : {
        //name : "title",
        //number : 0

    //     name : "studentsInf",
    //     number : 1,
    //     educationalInstitution : "Київський Політехнічний Інститут імені Ігоря Сікорського",
    //     gradebookNumber : "8425",
    //     studentName : "Богдан",
    //     studentSurname : "Шмалько",
    //     studentFathername : "Ігорович",
    //     faculty : "Інформатики та обчислювальної техніки",
    //     trainingDirection : "Бакалавр",
    //     specialty : "Інженер програмної інженерії",
    //     qualification : "?",
    //     studyForm : "денна",
    //     admissionCourse : "1",
    //     admissionYear : "01.09.2018",
    //     educationalViceRector : "Якийсь мужик",
    //     facultyDean : "Якийсь мужик",
    //     issueDate : "27.09.2018",
    //     photo : "https://avatars0.githubusercontent.com/u/43091830?s=460&u=4a65828d603f9ee468eef153a268b919ccb70bb7&v=4"

        // name : "test",
        // number : "2",
        // studentName : "Богдан",
        // studentSurname : "Шмалько",
        // studentFathername : "Ігорович",
        // semester : "1",
        // beginYear : "2018",
        // finishYear : "2019",
        // marks : [
        //     {
        //         subject : "ОС",
        //         hours : "100",
        //         loans : "21",
        //         teacher : "Симоненко В.П.",
        //         mark100 : "75",
        //         markWords : "добре",
        //         draftingDate : "01.01.2019"
        //     },
        //     {
        //         subject : "Дискретка",
        //         hours : "50",
        //         loans : "22",
        //         teacher : "Неповню Х.З.",
        //         mark100 : "100",
        //         markWords : "відмінно",
        //         draftingDate : "05.01.2019"
        //     },
        //      {},{},{},{},{},{},{},{}
        // ]

        // name : "examination",
        // number : "3",
        // studentName : "Богдан",
        // studentSurname : "Шмалько",
        // studentFathername : "Ігорович",
        // semester : "1",
        // beginYear : "2018",
        // finishYear : "2019",
        // marks : [
        //     {
        //         subject : "ОС",
        //         hours : "100",
        //         loans : "21",
        //         teacher : "Симоненко В.П.",
        //         mark100 : "75",
        //         markWords : "добре",
        //         draftingDate : "01.01.2019"
        //     },
        //     {
        //         subject : "Дискретка",
        //         hours : "50",
        //         loans : "22",
        //         teacher : "Неповню Х.З.",
        //         mark100 : "100",
        //         markWords : "відмінно",
        //         draftingDate : "05.01.2019"
        //     },
        //     {},{},{},{},{},{},{},{}
        // ]

        // name : "practiceTable",
        // number : "26",
        // practices : [
        //     {
        //         practiceName : "smth",
        //         course : "4",
        //         wherePractice : "десь там",
        //         position : "lox"
        //     },
        //     {},{},{},{},{},{},{},{}
        // ]

        // name : "practice",
        // number : "27",
        // studentName : "Богдан",
        // studentSurname : "Шмалько",
        // studentFathername : "Ігорович",
        // practices : [
        //     {
        //         beginData: "01.10.2020",
        //         finishData: "02.11.2020",
        //         supervisor : "Якийсь дядько",
        //         mark100 : "97",
        //         markWords : "відмінно",
        //         draftingDate : "05.05.2020"
        //     },
        //     {},{},{},{},{},{},{},{}
        // ]

        // name : "certification",
        // number : "28",
        // examenations : [
        //     {
        //         examName : "emam name",
        //         draftingDate : "05.05.2020"
        //     }, {},{},{},{},{},{},{},{}
        // ]

        // name : "examinationTable",
        // number : "29",
        // studentName : "Богдан",
        // studentSurname : "Шмалько",
        // studentFathername : "Ігорович",
        // facultyDean : "Якийсь мужик",
        // examenations : [
        //     {
        //         mark100 : "97",
        //         markWords : "відмінно",
        //         сommissionMembers : "first, second, third"
        //     }, {},{},{},{},{},{},{},{}
        // ]

        // name : "degreeProject",
        // number : "30",
        // studentName : "Богдан",
        // studentSurname : "Шмалько",
        // studentFathername : "Ігорович",
        // topic : "web is cool",
        // courseSupervisor : "Якийсь мужик",
        // projectSubmissionDate : "02.03.2021",
        // protectionDate : "19.03.2021",
        // mark100 : "97",
        // markWords : "відмінно",
        // сommissionMembers : "first, second, third"

        // name : "decisionExaminationCommission",
        // number : "31",
        // notes : "bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla ",
        // headName : "Вася",
        // headSurname : "asas",
        // headFuthername : "sasa",
        // firstName : "Вася",
        // firstSurname : "sasa",
        // firstFuthername : "asas",
        // secondName : "Вася",
        // secondSurname : "asas",
        // secondFuthername : "asas",
        // thirdName : "Вася",
        // thirdSurname : "dsds",
        // thirdFuthername : "sdsd",
        // date : "21.12.2021",
        // studentName : "Богдан",
        // studentSurname : "Шмалько",
        // studentFathername : "Ігорович",
        // honors : "asasas",
        // decisionNumber : "228",
        // fromDate : "21.12.2021",
        // issuer : "Вася Д.О.",
        // facultyDean : "Якийсь мужик"
    }
}

const Gradebook = (props) =>{
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
        console.log(range.current.value)
        //відправляємо на серв запрос про зміну сторінки через пропси
    }
    const rangeChange = () => {
        gradebook.currentPage = range.current.value
    }

    return <div className={s.gradebook +" , center"}>
        <div className={s.book}>
            {currentPage()}
            <div className={s.navigation}>
                <div>page : {gradebook.currentPage}</div>
                <button>previous</button>
                <input type='range' min = '0' max = '37' step = '1' value = {gradebook.currentPage}
                    ref = {range} onMouseUp={rangeUp} onChange={rangeChange}/>
                <button disabled={false}>next</button>
            </div>
        </div>
    </div>
}



export default Gradebook