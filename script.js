// ===============================================================
// page maximum
let pMax = 4

// page en cours
let page = 0;

// score total
let score = 0;

//bloc resultat et bouton reset 
let bReset = document.getElementById("reset")
bReset.style.display = 'none'

//bloc avec les réponses
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
        document.getElementById('blocQuestion').style.display = 'flex'
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
        document.getElementById('blocQuestion').style.display = 'none'

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