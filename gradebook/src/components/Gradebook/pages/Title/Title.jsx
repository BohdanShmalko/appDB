import React from 'react'
import s from './Title.module.css'

const Title = (props) =>{
    return <div className={`${s.title} , bookHeight`}>
        <div className={s.free}></div>
        <div className="upper">Залікова книжка студента</div>
    </div>
}



export default Title