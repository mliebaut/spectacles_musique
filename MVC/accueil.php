<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <title>Document</title>
</head>
<body>
    <h1>Liste des musiciens par groupe</h1>

    <form action="./accueil.php" method="GET">
        <label for="groupe">Groupe</label>
        <select name="groupe" id="groupe">
        <?php
            require "select.php";
            require "connect.php";
            select_item("groupes", "id", "nom_groupe");
        ?>
        </select>
    </form>
    <div>
        <?php 
            if (isset($_GET["groupe"])) {
                get_musicians_from_group($_GET["groupe"]);
            }
        ?>
    </div>
</body>
</html>