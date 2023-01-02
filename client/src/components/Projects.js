import React from 'react'
import  Row from 'react-bootstrap/Row';
import Container from 'react-bootstrap/Container';
import Col from 'react-bootstrap/Col';
import Card from 'react-bootstrap/Card';
import ProjectCard from './ProjectCard';



let Projects =({user, projects})=>{

  
  const projectList = projects?.map((project) => (
    <ProjectCard key={project.id} project={project} />
))



  return(
    <Container  className='ml-1' >
      <Row >
        <Col >
            <Row xs={1} md={2} lg={3} >
                
                <Container style={{ paddingTop: '1rem' }}>
                    {projectList}
                </Container>
               
            </Row>
        </Col>
      </Row>
    </Container>
    
  )
}

export default Projects;