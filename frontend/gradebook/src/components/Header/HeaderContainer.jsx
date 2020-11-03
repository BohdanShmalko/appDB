import React from 'react'
import {connect} from "react-redux"
import {compose} from "redux"
import Header from "./Header";

class PeoplesContainer extends React.Component {
    render() {
        return <Header {...this.props}/>
    }
}

const stateToProps = state => ({

})

export default compose(
    connect(stateToProps, {}))(PeoplesContainer)


