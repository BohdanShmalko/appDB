import React from 'react'
import {Redirect} from "react-router-dom"
import {connect} from "react-redux"

const stateToProps = state => ({
    isAuthorize : state.auth.isAuthorize
})

export const withAuthRedirect = Component => {
    class AuthRedirect extends React.Component {
        render() {
            if(!this.props.isAuthorize) return <Redirect to = '/login' />
            return <Component {...this.props} />
        }
    }
    return connect(stateToProps)(AuthRedirect)
}