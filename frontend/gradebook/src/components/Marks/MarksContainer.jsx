import React from 'react'
import {connect} from "react-redux"
import {compose} from "redux"
import Marks from "./Marks";

class PeoplesContainer extends React.Component {
    render() {
        return <Marks {...this.props}/>
    }
}

const stateToProps = state => ({

})

export default compose(
    connect(stateToProps, {}))(PeoplesContainer)


