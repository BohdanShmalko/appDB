import React from 'react'
import {connect} from "react-redux"
import {compose} from "redux"
import Schedule from "./Schedule";

class PeoplesContainer extends React.Component {
    render() {
        return <Schedule {...this.props}/>
    }
}

const stateToProps = state => ({

})

export default compose(
    connect(stateToProps, {}))(PeoplesContainer)


