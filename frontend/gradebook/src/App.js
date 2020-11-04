import React from 'react';
import './App.css'
import {Route} from 'react-router-dom'
import HeaderContainer from './components/Header/HeaderContainer'
import FooterContainer from './components/Footer/FooterContainer'
import ScheduleContainer from './components/Schedule/ScheduleContainer'
import GradebookContainer from './components/Gradebook/GradebookContainer'
import MarksContainer from './components/Marks/MarksContainer'
import LoginConteiner from "./components/Login/LoginConteiner";

function App() {
  return (
      <div className="App">
        <HeaderContainer/>
        <div className = "wrapper body">
          <Route path = '/schedule' render = {() => <ScheduleContainer/>} />
          <Route path = '/gradebook' render = {() => <GradebookContainer/>} />
          <Route path = '/marks' render = {() => <MarksContainer/>} />
          <Route path = '/login' render = {() => <LoginConteiner/>} />
        </div>
        <FooterContainer/>
      </div>
  );
}

export default App;
