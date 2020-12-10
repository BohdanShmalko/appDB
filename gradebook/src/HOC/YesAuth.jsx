import React from 'react'
import {Redirect} from "react-router-dom"
import {connect} from "react-redux"

const stateToProps = state => ({
    isAuthorize : state.auth.isAuthorize
})

export const withGoodAuthRedirect = Component => {
    class YesAuthRedirect extends React.Component {
        render() {
            if(this.props.isAuthorize) return <Redirect to = '/gradebook' />
            return <Component {...this.props} />
        }
    }
    return connect(stateToProps)(YesAuthRedirect)
}