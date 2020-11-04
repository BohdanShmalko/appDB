import React from 'react'
import {connect} from "react-redux"
import {compose} from "redux"
import Schedule from "./Schedule";
import {changeSchedule, scheduleAC} from "../../redux/scheduleReducer";

const {changeCurrentInp} = scheduleAC

class PeoplesContainer extends React.Component {
    render() {
        return <Schedule {...this.props}/>
    }
}

const stateToProps = state => ({
    schedule : state.schedule
})

export default compose(
    connect(stateToProps, {changeSchedule, changeCurrentInp}))(PeoplesContainer)


