import React from 'react'
import s from './Header.module.css'
import logo from '../../img/icon.png'
import {NavLink} from "react-router-dom";

const Header = (props) =>{
    const isAuthorize = true
    const isStudentAuthorize = false
    return <header className={s.header}>
        <div className={s.logo}> <img src={logo} /> </div>
        <div className={s.buttons}>
            <NavLink to = "/schedule"><button>Розклад</button></NavLink>
            {isAuthorize && isStudentAuthorize && <NavLink to = "/gradebook"><button>Залікова книжка</button></NavLink>}
            {isAuthorize && !isStudentAuthorize && <NavLink to = "/marks"><button>Виставити оцінки</button></NavLink>}
            {isAuthorize
                ?<NavLink to = "/schedule"><button>Вийти</button></NavLink>
                :<NavLink to = "/login"><button>Ввійти</button></NavLink>
            }
        </div>
    </header>
}



export default Header