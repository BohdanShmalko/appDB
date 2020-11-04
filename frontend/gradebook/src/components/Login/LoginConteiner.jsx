import React from 'react'
import {connect} from "react-redux"
import {compose} from "redux"
import Login from "./Login";

class PeoplesContainer extends React.Component {
    render() {
        return <Login {...this.props}/>
    }
}

const stateToProps = state => ({

})

export default compose(
    connect(stateToProps, {}))(PeoplesContainer)


