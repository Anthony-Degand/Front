// On utilise Var pour initier une variable globale <<<<>>>> on utilise Let pour un bloc limité

document.write("Hello world");                 // Document = on selectionne le document sur lequel on travail <<<<<<>>>>>> .write = ordonne d'afficher un message <<<<<<>>>>>>> 
                                               // ("Hello World");  Le message, ne pas oublier les "" pour chaine de caractère et ; pour terminer l'instruction et passer a la suivante permet d'afficher sur la page web les elements
console.log("Salut");                          // affiche le message *dans la console avec l'inspecteur de code (partie non visible)

var age = 14;                                  // var = créer une variable <<>> age = donnez le nom de la variable <<>> "=" donner la valeur <<>> 14 = la valeur
age = 28;                                      // modifier la valeur age
document.write(age);                           // afficher sur le page web la valeur de age

document.write(" ");                           // mettre un espace

var age = 14;                                  // var = créer une variable <<>> age = donnez le nom de la variable <<>> "=" donner la valeur <<>> 14 = la valeur
age = "Jason";                                 // Convertir variable entier en charactères ( avec Js c'est possible car plus dynamique)
document.write(age);                           // afficher sur le page web la valeur de age

var age2 = 14;
document.write(typeof age2);                   // afficher et identifier une variable ( number = nombre ; string = charactère ; booléen = true / false)

var majeur = true;                             // Var de type booléen utilisant True/False (comme un intérupteur on/off)

var nom = prompt("Comment t'apelles-tu ? ");    // 1>Permet de lire la variable ( lui indiquer une valeur) 2>Afficher un message texte
document.write(nom);                            // Prompt affiche obligatoirement une chaine de caractère que l'on peut convertir

var age3 = prompt("Quel âge as-tu? ");
age3 = parseInt(age3);                            // Permet de convertir un prompt (donc chaine de caractère) en entier
document.write(typeof age3);                      // afficher la convertion Caractère > Entier (chiffre)
                                                  // parseFloat() = pour des chiffres avec décimales ex : 99,99

const PI = 3.14;                                  // Permet de bloquer la valeur pour nombres, caractère ( chaine), booléens
PI = 2;                                            // Permet de proteger le type également, mais contenu modifiable pour tableaux, objets, ...
document.write(PI);

let N = 420;                  // initialisation Variable ( donner une valeur de base)
N = N + 1;                    // on peut également l'écrire de cette facon N += 1 qui est traduit N + 1 = Valable pour : =, +=, -=, *=, /=, %=
document.write(N);            // Afficher Variable N sur le document

let B = 5;                    // N ++ =Accrémentation ++N = Pre Accrémentation des calcules N++ ou N--
document.write(B++)                                                               // -> N = N puis N + 1
                                                        //   ++N ou --N  
                                                                // N + 1 Puis N = N 

document.write(8 > 12);                 // Indicateur de comparaison <, >, <=, >=
                                        // Opérateur égalité inégalité : != different de == verifier la valeur

let prenom = "Yuna";

if(prenom ==="Yuna")
{              // === permet de verifier par un booléens si Yuna = Yuna
    document.write("Oui");
}
else              // sinon
{
    document.write("Non");
}

let number = 5;

switch(number)
{
    case 0 :
    case 1 :
        document.write("OK");
        break;                 // Break sert a passer le switch et passer a la futur condition suivante
    case 2 :
    case 5 :
    default:                    // toujours mettre le default a la fin du switch
        alert("Pas OK");
        break;
}

let number2 = 15;
let res = ((number2 > 10) ? "number > 10" : "number <=10");      // <condition> ? <cas_vrai> : <cas_faux>





                                        








