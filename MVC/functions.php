<?php 
    function get_musicians_from_group ($id_group) {
        require("./connect.php");
        // preparation de la requete, avec jointure des tables groupes et musiciens a la table groupe_musiciens_relation, on recupere chaque nom de musicien associe a chaque groupe
        $query = "SELECT m.nom, m.prenom, m.date_creation, g.nom_groupe FROM musiciens m
        Join groupes_musiciens_relation gmr ON m.id = gmr.id_musicien
        Join groupes g ON g.id = gmr.id_groupe
        WHERE g.id = ?";

        $musiciens = array();
        $resultat = mysqli_prepare($base, $query);
        mysqli_stmt_bind_param($resultat, 'i', $id_group);

        if(!mysqli_stmt_execute($query)) {
            echo "erreur";
        }

        // recuperation du resultat

        mysqli_stmt_bind_result($query, $nom);
        // execute la requete
        while (mysqli_stmt_fetch($resultat)) {
            //dans un tableau associatif, j'associe la variable $nom chaque fois que l'ID nom apparait
            $musiciens[] = array(
                "nom" => $nom
            );
        }
    }
?>