import React from 'react'
import {Redirect} from "react-router-dom"
import {connect} from "react-redux"

const stateToProps = state => ({
    isStudentAuthorize : state.auth.isStudentAuthorize
})

export const withMarksRedirect = Component => {
    class MarksRedirect extends React.Component {
        render() {
            if(!this.props.isStudentAuthorize) return <Redirect to = '/marks' />
            return <Component {...this.props} />
        }
    }
    return connect(stateToProps)(MarksRedirect)
}