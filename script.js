// page maximum
let pMax = 4
// page en cours
let page = 0;


// tableau teste 1
let theme = [{
        nbth: "anime",
        questions: "un",
        reponse: ["1", "2", "3", "4"],
        answer: "2"
    },
    {
        nbth: "anime",
        questions: "deux",
        reponse: ["1", "2", "3", "4"],
        answer: "2"
    },
    {
        nbth: "anime",
        questions: "trois",
        reponse: ["1", "2", "3", "4"],
        answer: "2"
    },
    {
        nbth: "anime",
        questions: "quatre",
        reponse: ["1", "2", "3", "4"],
        answer: "2"
    },
    // nouveau theme cinema
    {
        nbth: "cinema",
        questions: "cinq",
        reponse: ["1", "2", "3", "4"],
        answer: "2"
    },
    {
        nbth: "cinema",
        questions: "huit",
        reponse: ["1", "2", "3", "4"],
        answer: "2"
    },
    {
        nbth: "cinema",
        questions: "sept",
        reponse: ["1", "2", "3", "4"],
        answer: "2"
    },
    {
        nbth: "cinema",
        questions: "six",
        reponse: ["1", "2", "3", "4"],
        answer: "2"
    },
    
];

// 

// score total
let score = 0;
let bReset = document.getElementById("reset")
bReset.style.display = 'none'
let filter = theme.filter(a => a.nbth == 'anime')

// ================================

    Array.from(document.getElementsByClassName('theme')).forEach(z => {
        z.addEventListener('click', () => {
        filter = theme.filter(a => a.nbth == z.dataset.info);
         Quizz()
        })
    });
// console.log("theme", z.dataset.info)

// ================================

// test de consol pour voir le tableau qui correspond à anime

// let filter = theme.filter(a => a.nbth === "anime");
// console.log("theme", filter);

// // // test de consol pour voir le tableau qui correspond à cinema
//  let filter = theme.filter(a => a.nbth === "cinema");
//  console.log("cinema", filter);


// quand on click sur le bouton ça va chercher notre function quizz
// document.getElementById("anime").addEventListener('click', () => {
//     Quizz();
// });
// document.getElementById("tech").addEventListener('click', () => {
//     Quizz();
// });
// document.getElementById("gaming").addEventListener('click', () => {
//     Quizz();
// });


// quand on click sur le bouton ça va chercher notre function quizz
// document.getElementById("cinema").addEventListener('click', () => {
//     Quizz();
// });

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


// ===================================================
function Quizz() {

    // math.floor prend un chiffre entier math.random va prendre un chiffre entre 0 et le chiffre défini
    // cette fonction va permetre de prendre un entier sur un chiffre donner par random
    x = Math.floor(Math.random() * 4);
    console.log("question aleatoire", x);

    // transformation du <p> par la valeur du tableau question en fonction du random
    document.getElementById("question").innerHTML = filter[x].questions;

    // mise en place des reponse sur les puces
    document.getElementById("r1").innerHTML = filter[x].reponse[0];
    document.getElementById("r2").innerHTML = filter[x].reponse[1];
    document.getElementById("r3").innerHTML = filter[x].reponse[2];
    document.getElementById("r4").innerHTML = filter[x].reponse[3];
    page += 1;


    console.log("page", page)
    document.getElementById("pRun").innerHTML = page
    document.getElementById("pMax").innerHTML = pMax
    if ((page - 1) === pMax) {
        document.getElementById("resultat").innerHTML = score
        bReset.style.display = 'flex'

    }

}



bReset.addEventListener('click', () => {
    reset();
})
// ==================================================
function reset() {
    page = 0
    score = 0
    document.getElementById("pRun").innerHTML = page
    document.getElementById("resultat").innerHTML = score
    bReset.style.display = 'none'



}
        
// =================================================

// } // fin for
// } // fin de la function quizz
// =============
