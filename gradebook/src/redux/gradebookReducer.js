import {gradebookAPI} from "../DAL/gradebook";

const PREVIOUS_IS_DISABLED = '/gradebook/PREVIOUS_IS_DISABLED'
const NEXT_IS_DISABLED = '/gradebook/NEXT_IS_DISABLED'
const CHENGE_PAGE = '/gradebook/CHENGE_PAGE'
const CHENGE_CURRENT_PAGE = '/gradebook/CHENGE_CURRENT_PAGE'

const initialState = {
        currentPage : 0,
        nextDisabled : false,
        previousDisabled : true,
        page : {}
}

export const gradebookReducer = (state = initialState, action) => {
    switch (action.type) {
        case CHENGE_PAGE : return {...state,
            page : action.data
        }
        case CHENGE_CURRENT_PAGE : return {...state,
            currentPage: action.currentPage
        }
        case PREVIOUS_IS_DISABLED : return {...state,
            previousDisabled: action.status
        }
        case NEXT_IS_DISABLED : return {...state,
            nextDisabled: action.status
        }
        default : return state
    }
}

export const gradebookAC = {
    changePageState(data) { return {type : CHENGE_PAGE, data} },
    changeCurrentPage(currentPage) {return {type: CHENGE_CURRENT_PAGE, currentPage}},
    nextIsDisabled(status) {return {type: NEXT_IS_DISABLED, status}},
    previousIsDisabled(status) {return {type: PREVIOUS_IS_DISABLED, status}},

}

export const changePage = number => async dispatch => {
    //dispatch(profileActionCreator.isLoad(false))
    const data = await gradebookAPI.loadPage(number)

    dispatch(gradebookAC.changePageState(data))
    if(data.number === 0) dispatch(gradebookAC.previousIsDisabled(true))
    else dispatch(gradebookAC.previousIsDisabled(false))

    if(data.number === 37) dispatch(gradebookAC.nextIsDisabled(true))
    else dispatch(gradebookAC.nextIsDisabled(false))

    dispatch(gradebookAC.changeCurrentPage(data.number))
    //dispatch(profileActionCreator.isLoad(true))
}

