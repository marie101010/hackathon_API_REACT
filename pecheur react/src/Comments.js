import React from 'react';


const Comments = ({comments}) => {
    return (
        <div class="container">
            <div className="App">
                </div>
                <h1> Les derniers commentaires </h1>
                {comments.map((comments) => (
                <div class="card">
                    <div class="card-body">
                        <h3 class="card-title">Par {comments.nom_auteur_c}{comments.prenom_auteur_c}</h3>
                        <h5 class="card-subtitle mb-2 text-muted">{comments.contenu}</h5>
                        <p>Date de publication: {comments.date_comment}</p>
                    <hr></hr>
                    </div>

            </div>
        ))}
        </div>
    )
};

export default Comments;