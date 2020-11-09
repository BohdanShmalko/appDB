import React from 'react'
import s from './Footer.module.css'
import logo from '../../img/icon.png'

const Footer = (props) =>{
    return <footer className={s.footer}>
        <div className={s.logo}> <img src={logo} /> </div>
        <div className={s.content}>Даний проект - курсова робота з дисципліни Бази данних-2. Створений студентом на 3 курсі Шмальком Богданом</div>
    </footer>
}



export default Footer