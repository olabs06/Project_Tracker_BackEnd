import React from 'react' ;
import  Row from 'react-bootstrap/Row';
import Container from 'react-bootstrap/Container';
import Col from 'react-bootstrap/Col';

const Footer = () =>{
    return(
       

        <Container fluid className='mt-1' style={{backgroundColor: '#34495E'}} >
            <Container  style={{color:'white', paddingTop: '1rem'}}  >
                <Row>
                    <Col xs={6} md={4} >
                        <img  src='https://moringaschool.com/wp-content/themes/moringa/public/images/logo.png' alt='Moringa' width={160} height={50} />
                        
                        <ul style={{paddingLeft :'2rem',listStyleType: 'none',textDecoration: 'none' }}>
                            <a href='#'style={{textDecoration: 'none', color: 'white' }}><li> Courses </li></a>
                            <a href='#'style={{textDecoration: 'none', color: 'white' }}><li>Careers</li></a>
                            <a href='#'style={{textDecoration: 'none', color: 'white' }}><li>FAQs</li></a>
                            <a href='#'style={{textDecoration: 'none', color: 'white' }}><li>Contact Us</li></a>
                            <a href='#'style={{textDecoration: 'none', color: 'white' }}><li>Privacy Policy</li></a>
                            <a href='#'style={{textDecoration: 'none', color: 'white' }}><li>Events</li></a>
                           
                        </ul>
                    </Col>
                    <Col xs={12} md={8}>
                        <p>
                            Ngong Lane, Ngong Lane Plaza, 1st Floor,
                            Nairobi Kenya
                        </p>
                        <ul style={{paddingLeft :'2rem',listStyleType: 'none'}}>
                            
                           
                            <li>
                                +254712293878
                                (Admissions/General Enquiries)
                            </li>
                            <li> +254741493565 (Data Science)</li>
                            
                            <li> +254712293878 (WhatsApp)</li>
                            <li>contact@moringaschool.com</li>
                            <li>admission@moringaschool.com</li>
                            <li>P.O Box 28860 00100, Nairobi</li>
                        </ul>
                    </Col>
                </Row>
            </Container>
        </Container>
    )
}

export default  Footer;