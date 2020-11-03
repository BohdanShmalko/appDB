import React from 'react'
import {connect} from "react-redux"
import {compose} from "redux"
import Gradebook from "./Gradebook";

class PeoplesContainer extends React.Component {
    render() {
        return <Gradebook {...this.props}/>
    }
}

const stateToProps = state => ({

})

export default compose(
    connect(stateToProps, {}))(PeoplesContainer)

