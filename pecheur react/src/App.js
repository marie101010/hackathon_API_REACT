
import React,{ Component } from 'react';
import Posts from './posts';
import './App.css';
import { render } from '@testing-library/react';

class App extends Component
{
  state={
    posts:[],

  }
  componentDidMount() {
    fetch('http://127.0.0.1:8000/api/post')
    .then(res => res.json())
    .then((data) => {
      this.setState({ posts: data })
    })
    .catch(console.log)
  }
  render(){
    return(

    <Posts posts={this.state.posts} />)
  }
}

  

export default App;
