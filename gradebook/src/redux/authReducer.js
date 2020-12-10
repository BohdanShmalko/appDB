import {loginAPI} from "../DAL/login";
import {Redirect} from "react-router-dom"

const IS_AUTHORIZED = "/login/IS_AUTHORIZED"
const SET_USER = "/login/SET_USER"

const initialState = {
    isAuthorize : false,
    isStudentAuthorize : false
}

export const authReducer = (state = initialState, action) => {
    switch (action.type) {
        case IS_AUTHORIZED : return {...state,
            isAuthorize: action.status
        }
        case SET_USER : return {...state,
            isAuthorize : true,
            ...action.data
        }
        default : return state
    }
}

export const authAC = {
    authorize(status) {return {type : IS_AUTHORIZED, status}},
    setUser(data) {return {type : SET_USER, data}}
}

export const changeUserId = (login, password) => async dispatch => {
    //dispatch(profileActionCreator.isLoad(false))
    const data = await loginAPI.getUserId(login, password)
    console.log(data)
    if(data.error) {
        console.log(data.error);
    }else{
        dispatch(authAC.setUser(data))
        
    }
    //dispatch(scheduleAC.changeScheduleState(data))

    //dispatch(profileActionCreator.isLoad(true))
}