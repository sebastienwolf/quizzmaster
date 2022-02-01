// tableau teste 1
let theme = [{
        nbth: "anime",
        questions: "Où est-ce que Kaneki décide de travailler ?",
        reponse: ["Dans un bar", "Dans un café appelé l’Antique", "Dans un restaurant pour Goule", "À l’université"],
        answer: "1"
    },
    {
        nbth: "anime",
        questions: "Comment s’appelle l’auteur que Kaneki aime beaucoup ?",
        reponse: ["Takatsuki Sen", "Tachibana Sen", "Takatsuki Seido", "Akira Mado"],
        answer: "0"
    },
    {
        nbth: "anime",
        questions: "Dans quel manga ou anime, le héros est un petit robot ?",
        reponse: ["Yume Senshi", "Wingman", "Astro Boy", " Gundam Wing, Gundam Seed et Gundam 00 Mazinger"],
        answer: "2"
    },
    {
        nbth: "anime",
        questions: "Qui est l’étudiant  qui dépasse certain héro pro ? ",
        reponse: ["Lemillion", "Endevor", "Hawks", "Stain "],
        answer: "0"
    },
    {
        nbth: "Qui emmène Eren au tribunal ? ",
        questions: "quatre",
        reponse: ["Erwin Smith", "Levy", "Hanzi Zoé", "Mikasa Ackerman"],
        answer: "1"
    },
    {
        nbth: "Lors du combat final contre Buu buu , Vegeta déclare que ? ",
        questions: "quatre",
        reponse: ["Goku est un imbécile", "Goku est le numéro 1", "Goku est le plus gentil des sayan", "Goku est son plus grand rival"],
        answer: "1"
    },
    // nouveau theme cinema
    {
        nbth: "cinema",
        questions: "De quel film est issu la musique culte « Now we are free »?",
        reponse: ["Gladiator", "Star Wars", "Le seigneur des Anneaux", "Il faut sauver le soldat Rayan "],
        answer: "0"
    },
    {
        nbth: "cinema",
        questions: "Dans le film « La Chute du Faucon noir » quel est la force d’intervention à pied ?",
        reponse: ["Mac V SOG", "Les Marines", "La Delta Force", "Les Spetsnaz "],
        answer: "1"
    },
    {
        nbth: "cinema",
        questions: "Dans le film gladiator qui assassine Marc Aurèle ?",
        reponse: ["Spartacus", "Octave", "Comode", "Maximus"],
        answer: "2"
    },
    {
        nbth: "cinema",
        questions: "Dans X men origins Wolwerine Logan se prend une explosion de quel type ?",
        reponse: ["Incident industrielle ", "Une explosion ", "Une Explosion atomique ", "Un tir de mortier "],
        answer: "2"
    },
    {
        nbth: "cinema",
        questions: "Comment s’ appel le méchant qui a copié la technologie Stark lors du grand prix à Monaco ?",
        reponse: ["Enton Vanko ", "Ivan Vanko", "Jin Khan ", "Raymon Barkov "],
        answer: "1"
    },
    {
        nbth: "cinema",
        questions: "Dans Transformers comment appel t’on l’élément pouvant réanimer un transformers ?",
        reponse: ["La Matrice de commandement", "Le All Spark", "Le cube de commandement", "Le tesseract commandement"],
        answer: "0"
    },

    // nouveau theme gaming
    {
        nbth: "gaming",
        questions: "Quelle est l'année de sortie de la Super Nintendo en France ? ",
        reponse: ["1990", "1991", "1992", "1993"],
        answer: "0"
    },
    {
        nbth: "gaming",
        questions: "Dans quelle ville est né Altaïr, le héros du premier Assassin's Creed ? ",
        reponse: ["Jérusalemen ", "Rome", "Masyaf ", "Sparte "],
        answer: "2"
    },
    {
        nbth: "gaming",
        questions: "Comment s’appel le puissant héro de God of war ?",
        reponse: ["Credos ", "Démios ", "Kratos ", "Sakrot"],
        answer: "2"
    },
    {
        nbth: "gaming",
        questions: "De quels jeux Franklin Michael Trevor sont-ils  issus ? ",
        reponse: ["Red dead rédemption 2 ", "The last of us ", "Grand Theft Auto 5 ", "Grand theft Auto 4 "],
        answer: "2"
    },
    {
        nbth: "gaming",
        questions: "Quel moteur graphique utilisé dans les jeux battlefield ?",
        reponse: ["Unity ", "Unreal Engine", "Rage ", "Frostbite "],
        answer: "3"
    },
    {
        nbth: "gaming",
        questions: "Quel est le studio qui a crée la licence Assassin’s Creed ?",
        reponse: ["Valve", "Bethesda", "Criterion", "Ubisoft"],
        answer: "3"
    },
    {
        nbth: "tech",
        questions: "Que veut dire High tech ?",
        reponse: ["Technologie", "La petite technologie", "La haute technologie", "La techno"],
        answer: "2"
    },
    {
        nbth: "tech",
        questions: "Que veut dire RAM ?",
        reponse: ["Random Access Memory", "Right Acces Mobile", "Rainbow Acces Memory", "Random Admin Memory"],


        answer: "0"
    },
    {
        nbth: "tech",
        questions: "Quel est le rôle d’un processeur ?",
        reponse: ["D’exécuter des fréquences d’images", "D’échanger des données entre les différents composants informatique ", "De stocker des données", "De centraliser la prise en charge de la RAM"],
        answer: "1"
    },
    {
        nbth: "tech",
        questions: "Que veut dire CPL ?",
        reponse: ["Courant porteur de liens", "Couverture pérméable de ligne", "Courant porteur de ligne", "Courant paramétrable de ligne"],
        answer: "2"
    },

    {
        nbth: "tech",
        questions: "Qui est le successeur de Steve Jobs ?",
        reponse: ["Tim Cook", "Mark Zuckerberg", "Richard Branson", "Ragnar Lothbrok"],
        answer: "Tim Cook"
    },
    {
        nbth: "tech",
        questions: "Quel est le nouveau nom de Facebook ?",
        reponse: ["Méta", "Messenger", "Discord", "Zétaverse"],
        answer: "Méta"
    },



];
// ===============================================================
// page maximum
let pMax = 4

// page en cours
let page = 0;

// score total
let score = 0;
let bReset = document.getElementById("reset")
bReset.style.display = 'none'
let blocAnswer = document.getElementById("selectAnswer")
blocAnswer.style.display = 'none'

let filter = theme.filter(a => a.nbth == 'anime')
let questionSet = ['0','1','2','3','4','5']
let X; 
let bResult = document.getElementById("bResult")
// ================================

Array.from(document.getElementsByClassName('theme')).forEach(z => {
    z.addEventListener('click', () => {
        filter = theme.filter(a => a.nbth == z.dataset.info);
        blocAnswer.style.display = 'flex'
        Quizz()
    })
});
// console.log("theme", z.dataset.info)

// ================================

// vérification du résultat
// on prend toutes les classe "c" vu qu'il y a plusieur élément cela ce met dans un tableau d'ou le array.from
// le foreach pour allez chercher le résultat dans ce tableau
// "y" est l'endroit ou clique qu'on met en nom de la function
Array.from(document.getElementsByClassName('c')).forEach(y => {
    y.addEventListener('click', () => {
        // dataset.number sert a récuperer le datanumber de la classe 'c'
        if (y.dataset.number == filter[x].answer) {
            score += 1
            console.log(true)
            Quizz()
        } else {
            // mettre un console dans le log juste pour mettre un truc(dans le else)
            console.log(false)
            Quizz()

        }


    })
})

// quand on clique sur le bouton reset, la function est reset
bReset.addEventListener('click', () => {
    reset();
})

// ===================================================
function Quizz() {

    // math.floor prend un chiffre entier math.random va prendre un chiffre entre 0 et le chiffre défini
    // cette fonction va permetre de prendre un entier sur un chiffre donner par random
    x = Math.floor(Math.random() * questionSet.length);
    console.log("question aleatoire", x);

    // transformation du <p> par la valeur du tableau question en fonction du random
    document.getElementById("question").innerHTML = filter[questionSet[x]].questions;

    // mise en place des reponse sur les puces
    document.getElementById("r1").innerHTML = filter[questionSet[x]].reponse[0];
    document.getElementById("r2").innerHTML = filter[questionSet[x]].reponse[1];
    document.getElementById("r3").innerHTML = filter[questionSet[x]].reponse[2];
    document.getElementById("r4").innerHTML = filter[questionSet[x]].reponse[3];
    page += 1;

    console.log("page", page)
    document.getElementById("pRun").innerHTML = page
    document.getElementById("pMax").innerHTML = pMax
    if ((page - 1) === pMax) {
        document.getElementById("resultat").innerHTML = score
        bReset.style.display = 'flex'
        bResult.style.display = 'bloc'

    }

    questionSet.splice(x,1);
    console.log("question", questionSet);
}
// ===================================================
function Quizz() {

    // math.floor prend un chiffre entier math.random va prendre un chiffre entre 0 et le nombre de caractere dans le tablea questionSet grace à .length
    // cette fonction va permetre de prendre un entier sur un chiffre donner par random
    x = Math.floor(Math.random() * questionSet.length);
    console.log("question aleatoire", x);

    // transformation du <p> par la valeur du tableau question en fonction du random
    document.getElementById("question").innerHTML = filter[questionSet[x]].questions;

    // mise en place des reponse sur les puces
    document.getElementById("r1").innerHTML = filter[questionSet[x]].reponse[0];
    document.getElementById("r2").innerHTML = filter[questionSet[x]].reponse[1];
    document.getElementById("r3").innerHTML = filter[questionSet[x]].reponse[2];
    document.getElementById("r4").innerHTML = filter[questionSet[x]].reponse[3];
    page += 1;
    console.log("page", page)
    document.getElementById("pRun").innerHTML = page
    document.getElementById("pMax").innerHTML = pMax
    
    if ((page - 1) === pMax) {
        document.getElementById("resultat").innerHTML = score
        bReset.style.display = 'flex'

    }
// permet d'enlever la valeur de x dans le tableau de questionSet pour eviter qu'il ce repete
    questionSet.splice(x,1);
    console.log("question", questionSet);
}
// ==================================================
function reset() {
    page = 0
    score = 0
    document.getElementById("pRun").innerHTML = page
    document.getElementById("resultat").innerHTML = score
    questionSet = ['0','1','2','3','4','5']
    bReset.style.display = 'none'
    blocAnswer.style.display = 'none'
}