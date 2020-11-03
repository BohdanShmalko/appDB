import React from 'react'
import {connect} from "react-redux"
import {compose} from "redux"
import Gradebook from "./Gradebook";
import {changePage, gradebookAC} from "../../redux/gradebookReducer";

const {changeCurrentPage} = gradebookAC

class PeoplesContainer extends React.Component {
    render() {
        return <Gradebook {...this.props}/>
    }

    componentDidMount() {
        this.props.changePage(0)
    }
}

const stateToProps = state => ({
    gradebook : state.gradebook
})

export default compose(
    connect(stateToProps, {changePage, changeCurrentPage}))(PeoplesContainer)


