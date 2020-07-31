import React from 'react';
import './App.css';
import Comments from './Comments';




const Posts = ({posts}) => {
    return (
        <div className="container">
            <div className="App">
                <h1> Vos posts </h1>
                {posts.map((post) => (
                    
                <div className="card">
                    <div class="card-body">
                        <h3 class="card-title">{post.nom_poisson}</h3>
                        <p>Poids: {post.poids_poisson} kg</p>  
                        <p>Taille: {post.taille_poisson} cm</p>
                        <p><u>Péché par:</u> {post.prenom_auteur_p} {post.nom_auteur_p}</p>
                        
                        <h4 class="card-subtitle mb-2 text-muted">{post.details}</h4>
                        <div className="img">
                        {/* <img class="photo_poisson" src= */}{post.photo_poisson}{/*  alt="snif" */} {/* alt="snif"></img> */}
                        </div> <br/>
                        <div className="comm">
                            <h5>Vos commentaires:</h5>{post.comments.map((com) => ( 
                            <p>{com.nom_auteur_c} {com.nom_auteur_c} <br/>
                            {com.contenu}</p>))}
                            </div>
                            
                            <br/>
                        <hr></hr>
                    </div>
                </div>
        ))}
        </div>
    </div>
    )
};

export default Posts;