import './App.css';
import React from 'react';
import Classes from './components/Classes'
import Header from './components/Header'
import Footer from './components/Footer';
import Projects from './components/Projects';
import Community from './components/Community';
import Login from './components/Login';
import About from './components/About'; 
import { BrowserRouter, Routes, Route } from 'react-router-dom';


function App() {
  return (
    <>
      <BrowserRouter>
        <Header />
        <Routes>
          <Route path='/' element={<Classes />} />
          <Route path='projects' element={<Projects />} />
          <Route path='about' element={<About />} />
          <Route path='community' element={<Community />} />
          <Route path='login' element={<Login />} />
        </Routes>
        <Footer />
      </BrowserRouter>
    </>
  );
}

export default App;
