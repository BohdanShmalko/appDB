import {marksAPI} from "../DAL/marks";

const CHANGE_MARKS_STATE = "/marks/CHANGE_MARKS_STATE"
const CHANGE_ACTIVE_YEAR = "/marks/CHANGE_ACTIVE_YEAR"
const CHANGE_ACTIVE_SUBJECT = "/marks/CHANGE_ACTIVE_SUBJECT"
const CHANGE_ACTIVE_GROUP = "/marks/CHANGE_ACTIVE_YEAR_GROUP"

const initialState = []

export const marksReducer = (state = initialState, action) => {
    switch (action.type) {
        case CHANGE_MARKS_STATE : return [...action.data]
        case CHANGE_ACTIVE_YEAR : return state.map((year, indexY) => {
            if(indexY === action.year) return {...year, isActive : !year.isActive}
            return year
        })
        case CHANGE_ACTIVE_SUBJECT : return state.map((year,indexY) => {
            if(indexY === action.year) return {...year, subjects : year.subjects.map((subject, indexS) =>{
                if(indexS === action.subject) return {...subject, isActive : !subject.isActive}
                return subject
            })}
            return year
        })
        case CHANGE_ACTIVE_GROUP : return state.map((year,indexY) => {
            if(indexY === action.year) return {...year, subjects : year.subjects.map((subject, indexS) =>{
                    if(indexS === action.subject) return {...subject, groups : subject.groups.map((group, indexG) => {
                        if(indexG === action.group) return {...group, isActive : !group.isActive}
                            return group
                        })}
                    return subject
                })}
            return year
        })
        default : return state
    }
}

export const marksAC = {
    changeMarksState(data) {return {type : CHANGE_MARKS_STATE, data}},
    changeActiveYear(year) {return {type : CHANGE_ACTIVE_YEAR, year}},
    changeActiveSubject(year, subject) {return {type : CHANGE_ACTIVE_SUBJECT, year, subject}},
    changeActiveGroup(year, subject, group) {return {type : CHANGE_ACTIVE_GROUP, year, subject, group}}
}

export const getMarks = () => async dispatch => {
    //dispatch(profileActionCreator.isLoad(false))
    const data = await marksAPI.loadMarks()

    dispatch(marksAC.changeMarksState(data))

    //dispatch(profileActionCreator.isLoad(true))
}

export const saveMarks = inf => async dispatch => {
    //dispatch(profileActionCreator.isLoad(false))
    const data = await marksAPI.saveMarks(inf)

    //if(data.status == 200) //dispatch(profileActionCreator.isLoad(true))
}



