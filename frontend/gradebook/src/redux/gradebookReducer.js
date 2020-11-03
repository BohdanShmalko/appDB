import {gradebookAPI} from "../DAL/gradebook";

const NEXT_PAGE = '/gradebook/NEXT_PAGE'
const PREVIOUS_PAGE = '/gradebook/PREVIOUS_PAGE'
const CHENGE_PAGE = '/gradebook/CHENGE_PAGE'
const CHENGE_CURRENT_PAGE = '/gradebook/CHENGE_CURRENT_PAGE'

const initialState = {
        currentPage : 31,
        nextDisabled : false,
        previousDiabled : true,
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

export const authorizeReducer = (state = initialState, action) => {

    switch (action.type) {
        case CHENGE_PAGE : return {...state,
            page : action.data
        }
        case CHENGE_CURRENT_PAGE : return {...state,
            currentPage: action.currentPage
        }
        default : return state
    }
}

export const gradebookAC = {
    changePage(data) { return {type : CHENGE_PAGE, data} },
    changeCurrentPage(currentPage) {return {type: CHENGE_CURRENT_PAGE, currentPage}}
}

export const changePage = number => async dispatch => {
    //dispatch(profileActionCreator.isLoad(false))
    const data = await gradebookAPI.loadPage(number)

    dispatch(gradebookAC.changePage(data))
    dispatch(gradebookAC.changeCurrentPage(data.number))
    //dispatch(profileActionCreator.isLoad(true))
}

