import React,{ Component } from 'react';
import Axios from 'axios';
import './App.css';




class Ajout_post extends Component
{
    state={
    nom_poisson:"",
    photo_poisson:"",
    poids_poisson:"",
    taille_poisson:"",
    details:"",
    nom_auteur_p:"",
    prenom_auteur_p:""
    };

    changeHandler = e => {
    this.setState({[e.target.name]: e.target.value})
    }

    Ajout_post= (e) => {
        e.preventDefault()
        Axios.post('http://127.0.0.1:8001/api/post',{
        nom_auteur_p: this.state.nom_auteur_p,
        prenom_auteur_p: this.state.prenom_auteur_p,
        poids_poisson: this.state.poids_poisson,
        taille_poisson: this.state.taille_poisson,
        details: this.state.details,
        nom_poisson: this.state.nom_poisson,
        photo_poisson: this.state.photo_poisson
        })
    .then(response =>{})
    .catch(error =>console.log(error));
    this.message = alert( 'Le message a été publié avec succès !' );
    this.setState({
    nom_poisson:"",
    photo_poisson:"",
    poids_poisson:"",
    taille_poisson:"",
    details:"",
    nom_auteur_p:"",
    prenom_auteur_p:""
    });
};


render () {
return (
<div class="container" >
    <h1>Publier vos prises !</h1>
    <form onSubmit={this.Ajout_post}>
    <label>Votre nom:</label><br/>
    <input type="text" placeholder="Votre nom" name="nom_auteur_p" value={this.state.nom_auteur_p} onChange={this.changeHandler} /><br/>
    <label>Votre prénom:</label><br/>
    <input type="text" placeholder="Votre prénom" name="prenom_auteur_p" value={this.state.prenom_auteur_p} onChange={this.changeHandler} /><br/>
    <label>Votre prise:</label><br/>
    <select name="nom_poisson" value={this.state.nom_poisson} onChange={this.changeHandler} ><br/>
    <option value="">--Veuillez choisir un poisson--</option>
    <option value="anguille">Anguille</option>
    <option value="breme">Brême</option>
    <option value="brochet">Brochet</option>
    <option value="carassin">Carassin</option>
    <option value="carpe">Carpe</option>
    <option value="esturgeon">Esturgeon</option>
    <option value="tanche">Tanche</option>
    </select><br/>
    <label>Nom de la photo (optionnel):</label><br/>
    <input type="text" placeholder="Nom de photo" name="photo_poisson" value={this.state.photo_poisson} onChange={this.changeHandler} /><br/>
    <label>Son poids:</label><br/>
    <input type="number" placeholder="Poids de la prise (en kg)" name="poids_poisson" value={this.state.poids_poisson} onChange={this.changeHandler} /><br/>
    <label>Sa taille:</label><br/>
    <input type="number" placeholder="Taille de la prise(en cm)" name="taille_poisson" value={this.state.taille_poisson} onChange={this.changeHandler} /><br/>
    <label>Son histoire:</label><br/>
    <input type="textarea" placeholder="L'histoire de votre prise" name="details" value={this.state.details} onChange={this.changeHandler} /><br/>
    <label for="photo">Cliquez sur le bouton ci-dessous pour ajouter la photo</label>
    <input type="file" name="photo_poisson" accept="image/png, image/jpeg"/><br/><br/>
    <button type=""> Publier </button>
    <br /><br /><br />
    </form>
    </div>
    )
    }  
}

export default Ajout_post;