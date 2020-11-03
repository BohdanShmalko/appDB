import React from 'react';
import './App.css'
import {Route} from 'react-router-dom'
import HeaderContainer from './components/Header/HeaderContainer'
import FooterContainer from './components/Footer/FooterContainer'
import ScheduleContainer from './components/Schedule/ScheduleContainer'
import GradebookContainer from './components/Gradebook/GradebookContainer'
import MarksContainer from './components/Marks/MarksContainer'

function App() {
  return (
      <div className="App">
        <HeaderContainer/>
        <div className = "wrapper body">
          <Route path = '/schedule' render = {() => <ScheduleContainer/>} />
          <Route path = '/gradebook/:id?' render = {() => <GradebookContainer/>} />
          <Route path = '/marks' render = {() => <MarksContainer/>} />
        </div>
        <FooterContainer/>
      </div>
  );
}

export default App;
