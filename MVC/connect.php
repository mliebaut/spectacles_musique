<?php 
    $base = mysqli_connect("127.0.0.1", "root", "", "spectacles_musique", 3308);
    if (!$base) {
        echo "Erreur : Impossible de se connecter à MySQL." . PHP_EOL;
        echo "Errno de débogage : " . mysqli_connect_errno() . PHP_EOL;
        echo "Erreur de débogage : " . mysqli_connect_error() . PHP_EOL;
        exit;
    }
    echo "Succès : Une connexion correcte à MySQL a été faite! La base de donnée spectacles_musique est géniale." . PHP_EOL;
    echo "Information d'hôte : " . mysqli_get_host_info($base) . PHP_EOL;
?>