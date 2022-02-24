<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../CSS/style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Quizz</title>
</head>

<body class="quizz">
    <div id="content">

        <a href='principale.php?deconnexion=true'><span>Déconnexion</span></a>
        <!-- tester si l'utilisateur est connecté -->
        <?php
        session_start();
        if (isset($_GET['deconnexion'])) {
            if ($_GET['deconnexion'] == true) {
                session_unset();
                header("location:../index.php");
            }
        } else if (isset($_SESSION['pseudo'])) {
            $user = $_SESSION['pseudo'];
            // afficher un message
            echo "<br>Bonjour $user";
        }
        ?>

    </div>

    <!-- <div class="quizz" id="quizz"> -->
    <header class="header">
        <div class="title">
            <h1>MASTER QUIZZ</h1>
        </div>
        <div class="select">
            <p>Veuillez sélectionner votre thème</p>
        </div>
        <form id="selectTheme" action="./question.php" method="post">
            <input type="submit" value="Anime" name="anime" id="anime" class="theme" data-info="anime">
            <input type="submit" value="Gaming" name="gaming" id="gaming" class="theme" data-info="gaming">
            <input type="submit" value="Cinema" name="cinema" id="cinema" class="theme" data-info="cinema">
            <input type="submit" value="Tech" name="tech" id="tech" class="theme" data-info="tech">
        </form>
    </header>

    <div id="selectAnswer">
        <div id="blocQuestion">
            <p class="question" id="question"></p>
            <div class="blocAnswer">
                <div>
                    <button class='c' id="r1" data-number="0">
                        <p></p>
                    </button>
                    <button class='c' id="r2" data-number="1">
                        <p></p>
                    </button>
                </div>
                <div>
                    <button class='c' id="r3" data-number="2">
                        <p></p>
                    </button>
                    <button class='c' id="r4" data-number="3">
                        <p></p>
                    </button>
                </div>
            </div>
            <p>page : <span id="pRun"></span> /<span id="pMax"></span></p>
        </div>



        <div id="reset">
            <p>Votre résultat est de : </p>
            <p id="resultat"></p>
            <button id="rat">RESET</button>
        </div>
    </div>


    <script src="../script.js"></script>
</body>

</html>