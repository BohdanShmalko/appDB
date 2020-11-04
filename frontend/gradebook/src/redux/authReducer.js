
const IS_AUTHORIZED = "/header/IS_AUTHORIZED"

const initialState = {
    isAuthorize : true,
    isStudentAuthorize : true
}

export const authReducer = (state = initialState, action) => {
    switch (action.type) {
        case IS_AUTHORIZED : return {...state,
            isAuthorize: action.status
        }
        default : return state
    }
}

export const authAC = {
    authorize(status) {return {type : IS_AUTHORIZED, status}}
}

