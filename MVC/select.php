<?php
    function select_item(string  $nom_table, string $nom_index, string $content) {
        $base = mysqli_connect("127.0.0.1", "root", "", "spectacles_musique", 3308);
        $sql = "SELECT * FROM $nom_table";
        $resultat = mysqli_query($base, $sql);
        while ($information = mysqli_fetch_assoc($resultat)) {
            echo '<option value="'. $information["$nom_index"]. '">' . $information["$content"] .' </option>';
        }
    }
?>