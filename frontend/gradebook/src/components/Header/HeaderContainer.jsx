import React from 'react'
import {connect} from "react-redux"
import {compose} from "redux"
import Header from "./Header";
import {authAC} from "../../redux/authReducer";

const {authorize} = authAC
class PeoplesContainer extends React.Component {
    render() {
        return <Header {...this.props}/>
    }
}

const stateToProps = state => ({
    auth : state.auth
})

export default compose(
    connect(stateToProps, {authorize}))(PeoplesContainer)


