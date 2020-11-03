import {applyMiddleware, createStore, combineReducers, compose} from 'redux'
import thunkMiddleware from "redux-thunk"
import {reducer as formReducer} from 'redux-form'
import {gradebookReducer} from "./gradebookReducer";

let reducers = combineReducers({
    form : formReducer,
    gradebook : gradebookReducer
})

const composeEnhancers = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;
const store = createStore(reducers, composeEnhancers(applyMiddleware(thunkMiddleware)))

export default store