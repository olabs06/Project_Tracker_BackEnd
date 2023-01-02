import React from 'react';
import  Button from 'react-bootstrap/Button';
import Container from 'react-bootstrap/Container';
import Card from 'react-bootstrap/Card';
import {Link} from 'react-router-dom'

let ProjectCard=({project}) =>{
  return(
    <Container  >
      <Card style={{ width: '100%', cursor: 'pointer' }} >
        <Card.Img variant="top" src={project?.image_url} alt='Avatar1' width={300} height= {300}  />
        <Card.Body style={{paddingLeft:'4rem'}}>
          <Card.Title><h1>{project?.title}</h1></Card.Title>
          <Link to={'projects'} className='btn'>Show Projects</Link>
        </Card.Body>
      </Card>
    </Container>
  )
}
export default ProjectCard;