import React from 'react'
import s from './Header.module.css'
import logo from '../../img/icon.png'

const Header = (props) =>{
    const isAuthorize = false
    return <header className={s.header}>
        <div className={s.logo}> <img src={logo} /> </div>
        <div className={s.buttons}>
            <button>Розклад</button>
            {isAuthorize
                ?<button>Вийти</button>
                :<button>Ввійти</button>
            }
        </div>
    </header>
}



export default Header