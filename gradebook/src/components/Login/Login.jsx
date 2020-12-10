import React from 'react'
import s from './Login.module.css'
import {FieldCreator} from "../Checker/FieldCreator";
import {CheckInput} from "../Checker/Checker";
import {reduxForm} from 'redux-form'
import {empty} from "../../validate/validate";

const Login = (props) =>{

    const LogInForm = ({handleSubmit}) => {
        return (
            <form onSubmit={handleSubmit} className={s.form}>
                <div>Enter your e-mail :</div>
                {FieldCreator(null, 'login',
                    CheckInput, [empty], null,
                    'Login')}
                <div>Enter your password :</div>
                {FieldCreator(null, 'password',
                    CheckInput, [empty], 'password',
                    'Password')}
                <div className = {s.submitButton}>
                        <button>Log In</button>
                </div>
            </form>
        )
    }

    const LogInReduxForm = reduxForm({
        form : 'logIn'
    })(LogInForm)

    const onSubmit = formData => {
        //console.log(formData)
        props.changeUserId(formData.login, formData.password)
    }

    return <div className={s.login}>
        <div className={s.free}></div>
        <LogInReduxForm onSubmit = {onSubmit}/>
    </div>
}



export default Login