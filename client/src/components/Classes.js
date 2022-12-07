import React from 'react';
import  Row from 'react-bootstrap/Row';
import Container from 'react-bootstrap/Container';
import Col from 'react-bootstrap/Col';

import Cards from './Cards';



let Classes = ()=> {
    return(
        <Container  className='ml-1' >
            <Row >
                <Col >
                    <Row xs={1} md={2} lg={3} >
                        
                        <Container style={{ paddingTop: '1rem' }}>
                            <Cards />
                        </Container>
                        <Container style={{ paddingTop: '1rem' }}>
                            <Cards />
                        </Container>
                        <Container style={{ paddingTop: '1rem' }}>
                            <Cards />
                        </Container>
                        <Container style={{ paddingTop: '1rem' }}>
                            <Cards />
                        </Container>
                        <Container style={{ paddingTop: '1rem' }}>
                            <Cards />
                        </Container>
                        <Container style={{ paddingTop: '1rem' }}>
                            <Cards />
                        </Container>
                        <Container style={{ paddingTop: '1rem' }}>
                            <Cards />
                        </Container>
                        <Container style={{ paddingTop: '1rem' }}>
                            <Cards />
                        </Container>
                        <Container style={{ paddingTop: '1rem' }}>
                            <Cards />
                        </Container>
                       
                    </Row>
                </Col>
            </Row>
        </Container>
    )
}
export default Classes;
