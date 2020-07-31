import React,{ Component } from 'react';
import Axios from 'axios';
import './App.css';




class Ajout_comments extends Component
{
    state={
    contenu:"",
    nom_auteur_c:"",
    prenom_auteur_c:""
    };

    changeHandler = e => {
    this.setState({[e.target.name]: e.target.value})
    }

    Ajout_post= (e) => {
        e.preventDefault()
        Axios.post('http://127.0.0.1:8000/api/post',{
        nom_auteur_c: this.state.nom_auteur_c,
        prenom_auteur_c: this.state.prenom_auteur_c,
        contenu: this.state.contenu,
        })
    .then(response =>{})
    .catch(error =>console.log(error));
    this.message = alert( 'Le message a été publié avec succès !' );
    this.setState({
        contenu:"",
        nom_auteur_c:"",
        prenom_auteur_c:""
    });
};


render () {
return (
<div class="container" >
    <form onSubmit={this.Ajout_comments}>
    <label>Votre nom:</label><br/>
    <input type="text" placeholder="Votre nom" name="nom_auteur_c" value={this.state.nom_auteur_p} onChange={this.changeHandler} /><br/>
    <label>Votre prénom:</label><br/>
    <input type="text" placeholder="Votre prénom" name="prenom_auteur_c" value={this.state.prenom_auteur_p} onChange={this.changeHandler} /><br/>
    <label>Votre commentaire:</label><br/>
    <input type="textarea" placeholder="" name="contenu" value={this.state.details} onChange={this.changeHandler} /><br/>
    <button type=""> Publier </button>
    <br /><br /><br />
    </form>
    </div>
    )
    }  
}

export default Ajout_comments;