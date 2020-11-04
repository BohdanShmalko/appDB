import React from 'react'
import {connect} from "react-redux"
import {compose} from "redux"
import Marks from "./Marks";
import {getMarks, marksAC, saveMarks} from "../../redux/marksReducer";
import {withAuthRedirect} from "../../HOC/Auth";
import {withGradebookRedirect} from "../../HOC/NoTeacher";

const {changeActiveYear, changeActiveSubject, changeActiveGroup} = marksAC

class PeoplesContainer extends React.Component {
    render() {
        return <Marks {...this.props}/>
    }
    componentDidMount() {
        this.props.getMarks()
    }
}

const stateToProps = state => ({
    marks : state.marks
})

export default compose(
    connect(stateToProps, {changeActiveYear, changeActiveSubject, changeActiveGroup, getMarks, saveMarks}),
    withAuthRedirect, withGradebookRedirect)(PeoplesContainer)


