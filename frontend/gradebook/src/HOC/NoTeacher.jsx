import React from 'react'
import {Redirect} from "react-router-dom"
import {connect} from "react-redux"

const stateToProps = state => ({
    isStudentAuthorize : state.auth.isStudentAuthorize
})

export const withGradebookRedirect = Component => {
    class GradebookRedirect extends React.Component {
        render() {
            if(this.props.isStudentAuthorize) return <Redirect to = '/gradebook' />
            return <Component {...this.props} />
        }
    }
    return connect(stateToProps)(GradebookRedirect)
}