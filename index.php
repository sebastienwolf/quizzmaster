<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="" href="/PHP/index.php">
        <title>Quizz</title>
</head>

<body class="quizz">



    <!-- <div class="quizz" id="quizz"> -->
    <header class="header">
        <div class="title">
            <h1>MASTER QUIZZ</h1>
        </div>

    </header>

    <div class="log">
        <form action="" method="get" id="insciption">
            <label for="">Nom :</label>
            <input type="text" name="Nom" id="name" placeholder="Nom">
            <label for="">Prénom :</label>
            <input type="text" name="Prénom" id="prenom" placeholder="Prénom">
            <label for="">Age :</label>
            <input type="date" name="Age" id="age" placeholder="Age">
            <label for="">Pseudo :</label>
            <input type="text" name="Pseudo" id="pseudo" placeholder="Pseudo">
            <label for="">Email :</label>
            <input type="email" name="Mail" id="mail" placeholder="Mail">
            <label for="">Mot de Passe :</label>
            <input type="password" name="" id="" placeholder="Password">
            <input type="submit" value="inscription">
        </form>
        <form action="" method="get" id="Connecxion">
            <label for="">Pseudo :</label>
            <input type="text" name="Pseudo" id="pseudo" placeholder="Pseudo">
            <label for="">Mot de Passe :</label>
            <input type="password" name="" id="" placeholder="Password">
            <input type="submit" value="connecter">
        </form>
        <button id="log__connec">Connecter</button>
        <button id="log__insc">Inscription</button>

    </div>
    <div id="jeu">
        <div class="select">
            <p>Veuillez sélectionner votre thème</p>
        </div>
        <div id="selectTheme">
            <button id="anime" class="theme" data-info="anime">Anime</button>
            <button id="gaming" class="theme" data-info="gaming">Gaming</button>
            <button id="cinema" class="theme" data-info="cinema">Cinema</button>
            <button id="tech" class="theme" data-info="tech">Tech</button>
        </div>
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
    </div>

    <script src="./script.js"></script>
</body>

</html>