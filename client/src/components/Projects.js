import React from 'react'
import  Row from 'react-bootstrap/Row';
import Container from 'react-bootstrap/Container';
import Col from 'react-bootstrap/Col';
import Card from 'react-bootstrap/Card';



let Projects =()=>{
  return(
   <Container>
    <Row className='justify-content-md-center'>
      <Col xs={4} >
        <Row md={1}>
          <Card style={{ height:700, cursor: 'pointer'}}>
            <h2>Hello</h2>
          </Card>
        </Row>
      </Col >
      <Col xs={8} >
        <Row md={1}>
          <Card style={{ height:700, cursor: 'pointer'}} >
            <Card.Body style={{paddingLeft:'4rem'}}>
              <Card.Title><h1>2021 Projects</h1></Card.Title>
              <h2>Years</h2>
              <h2>Contributors</h2>
              <h2>GitHub</h2>
              <p>Project Description</p>
            </Card.Body>
          </Card>
        </Row>
      </Col>
    </Row>
   </Container>
    
  )
}

export default Projects;