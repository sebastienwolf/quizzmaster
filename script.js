// page maximum
let pMax = 4
// page en cours
let page = 0;


// tableau teste 1
let theme = [
    {nbth: "anime", questions: "un", reponse: ["1","2","3","4"], answer:"2"},
    {nbth: "anime", questions: "deux", reponse: ["1","2","3","4"], answer:"2"},
    {nbth: "anime", questions: "trois", reponse: ["1","2","3","4"], answer:"2"},
    {nbth: "anime", questions: "quatre", reponse: ["1","2","3","4"], answer:"2"},
];

// 

// score total
let score = 0;


// test de consol pour voir le tableau qui correspond à anime
let filter = theme.filter(a => a.nbth === "anime");
console.log ("theme",filter);

// quand on click sur le bouton ça va chercher notre function quizz
document.getElementById("theme").addEventListener('click',() => {
    Quizz();
});



function Quizz (){

    // math.floor prend un chiffre entier math.random va prendre un chiffre entre 0 et le chiffre défini
    // cette fonction va permetre de prendre un entier sur un chiffre donner par random
        x = Math.floor(Math.random() * 4);
        console.log("question aleatoire",x);

        // transformation du <p> par la valeur du tableau question en fonction du random
        document.getElementById("question").innerHTML= theme[x].questions;

        // mise en place des reponse sur les puces
        document.getElementById("r1").innerHTML=theme[x].reponse[0];
        document.getElementById("r2").innerHTML=theme[x].reponse[1];
        document.getElementById("r3").innerHTML=theme[x].reponse[2];
        document.getElementById("r4").innerHTML=theme[x].reponse[3];
        page += 1;


        console.log("page",page)
        document.getElementById("pRun").innerHTML = page
        document.getElementById("pMax").innerHTML = pMax
}
// vérification du résultat
// on prend toutes les classe "c" vu qu'il y a plusieur élément cela ce met dans un tableau d'ou le array.from
// le foreach pour allez chercher le résultat dans ce tableau
// "y" est l'endroit ou clique qu'on met en nom de la function
    Array.from(document.getElementsByClassName('c')).forEach(y => {
        y.addEventListener('click', () => {
            // dataset.number sert a récuperet le datanumber de la classe 'c'
            if (y.dataset.number == theme[x].answer) {
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



    // ==================================================
   
  


        // } // fin for
    // } // fin de la function quizz
// =============
