import React from 'react'
import s from './Header.module.css'
import logo from '../../img/icon.png'
import {NavLink} from "react-router-dom";

const Header = ({auth, authorize}) =>{
    const {isAuthorize} = auth
    const {isStudentAuthorize} = auth
    return <header className={s.header}>
        <div className={s.logo}> <img src={logo} /> </div>
        <div className={s.buttons}>
            <NavLink to = "/schedule"><button>Розклад</button></NavLink>
            {isAuthorize && isStudentAuthorize && <NavLink to = "/gradebook"><button>Gradebook</button></NavLink>}
            {isAuthorize && !isStudentAuthorize && <NavLink to = "/marks"><button>Set assessment</button></NavLink>}
            {isAuthorize
                ?<NavLink to = "/schedule"><button onClick={() => authorize(false)}>Log out</button></NavLink>
                :<NavLink to = "/login"><button>Log in</button></NavLink>
            }
        </div>
    </header>
}



export default Header