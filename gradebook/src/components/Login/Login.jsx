import React from 'react'
import s from './Login.module.css'
import {FieldCreator} from "../Checker/FieldCreator";
import {CheckInput} from "../Checker/Checker";
import {NavLink} from 'react-router-dom'
import {reduxForm} from 'redux-form'
import {empty} from "../../validate/validate";

const Login = (props) =>{

    const LogInForm = ({handleSubmit}) => {
        return (
            <form onSubmit={handleSubmit} className={s.form}>
                <div>Введіть Ваш e-mail :</div>
                {FieldCreator(null, 'email',
                    CheckInput, [empty], null,
                    'Email or phone number')}
                <div>Введіть Ваш пароль :</div>
                {FieldCreator(null, 'password',
                    CheckInput, [empty], 'password',
                    'Password')}
                <div className = {s.submitButton}>
                    {/*!!!CHANGE IN FUTURE*/}<NavLink to='/gradebook' >
                    <button>Log In</button>
                    {/*!!!CHANGE IN FUTURE*/}</NavLink>
                </div>
            </form>
        )
    }

    const LogInReduxForm = reduxForm({
        form : 'logIn'
    })(LogInForm)

    const onSubmit = formData => {
        console.log(formData)
    }

    return <div className={s.login}>
        <div className={s.free}></div>
        <LogInReduxForm onSubmit = {onSubmit}/>
    </div>
}



export default Login