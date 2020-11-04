import {scheduleAPI} from "../DAL/schedule";

const CHANGE_SCHEDULE = '/schedule/CHANGE_SCHEDULE'
const CHANGE_CURRENT_INP = '/schedule/CHANGE_CURRENT_INP'

const standartDay = {
    subject : "",
    teacher : "",
    corps : "",
    audience : ""
}

const standartWeek = {
    monday : new Array(5).fill(standartDay),
    tuesday : new Array(5).fill(standartDay),
    wednesday : new Array(5).fill(standartDay),
    thursday : new Array(5).fill(standartDay),
    friday : new Array(5).fill(standartDay),
    saturday : new Array(5).fill(standartDay)
}

const initialState = {
    currentInp : "",
    name : "",
    first: standartWeek,
    second : standartWeek
}

export const scheduleReducer = (state = initialState, action) => {
    switch (action.type) {
        case CHANGE_SCHEDULE : return {...state,
            ...action.data
        }
        case CHANGE_CURRENT_INP : return {...state,
            currentInp : action.value
        }
        default : return state
    }
}

export const scheduleAC = {
    changeScheduleState(data) {return {type : CHANGE_SCHEDULE, data}},
    changeCurrentInp(value) {return {type : CHANGE_CURRENT_INP, value}}
}

export const changeSchedule = name => async dispatch => {
    //dispatch(profileActionCreator.isLoad(false))
    const data = await scheduleAPI.loadSchedule(name)

    dispatch(scheduleAC.changeScheduleState(data))

    //dispatch(profileActionCreator.isLoad(true))
}

