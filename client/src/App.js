import './App.css';
import React, {useState, useEffect} from 'react';
import Landing from './pages/Home/Landing';
// import Cohorts from './components/Cohorts'
import Header from './components/Header';
import Footer from './components/Footer';
import Projects from './components/Projects';
import Community from './components/Community';
import Login from './components/Login';
import SignUp from './components/SignUp'
import About from './components/About';
// import Hero from './components/Hero'; 
import { BrowserRouter, Routes, Route } from 'react-router-dom';



function App() {


  const [projects, setProjects] = useState([]);
  const [user, setUser] = useState(null);


  
   
  useEffect(() => {
    fetch("/me")
      .then((r) => {
        if(r.ok){
          r.json().then(
           (currentUser) => {
             setUser(currentUser)
              
           }
          );
         }
       }).catch(e=>console.log(e));
       
    //  fetch("/projects")
    //   .then((r) => {
    //     if(r.ok){
    //       r.json().then(
    //        (data) => {
    //          setProjects(data)
    //        }
    //       );
    //      }
    //    });
    
    }, []);

  return (
    <>
      <BrowserRouter>
        <Header user={user} setUser={setUser} />
        {user ? ( 
        <Routes>
          <Route exact path='about' element={<About />} />
          <Route exact path='projects' element={<Projects user={user} projects={projects}/>} />
          <Route exact path='community' element={<Community />} />
          {/* <Route exact path='login' element={<Login setUser={setUser} />} /> */}
          {/* <Route exact path='signup' element={<SignUp setUser={setUser} />} /> */}
          <Route path='/' element={<Landing />} />
        </Routes>
        ) : (
          <Routes>
          <Route exact path='about' element={<About />} />
          <Route exact path='projects' element={<Projects user={user} projects={projects}/>} />
          <Route exact path='community' element={<Community />} />
          <Route exact path='login' element={<Login setUser={setUser} />} />
          <Route exact path='signup' element={<SignUp setUser={setUser} />} />
          <Route path='/' element={<Landing />} />
        </Routes>
        ) }
        <Footer />
      </BrowserRouter>
    </>
  );
}

export default App;