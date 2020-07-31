import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import * as serviceWorker from './serviceWorker';
import Ajout_post from './Ajout_post'
import Container from 'react-bootstrap/Container';


ReactDOM.render(
  <React.StrictMode>
    <Container>
      <img src= {require('./logo.jpg')} alt="logo" height={200} width={360} /> <br />
      <Ajout_post/>
      <hr></hr>
      
      <App />
    </Container>
  </React.StrictMode>,
  document.getElementById('root')
);

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
