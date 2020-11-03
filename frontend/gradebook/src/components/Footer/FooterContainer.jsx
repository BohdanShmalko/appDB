import React from 'react'
import {connect} from "react-redux"
import {compose} from "redux"
import Footer from "./Footer";

class PeoplesContainer extends React.Component {
    render() {
        return <Footer {...this.props}/>
    }
}

const stateToProps = state => ({

})

export default compose(
    connect(stateToProps, {}))(PeoplesContainer)


