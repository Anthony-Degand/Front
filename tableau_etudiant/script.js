etudiant = new Array(15);

etudiant[0] = "salome";
etudiant[1] = "oceane";
etudiant[2] = "karim";
etudiant[3] = "jimmy";
etudiant[4] = "benoit";
etudiant[5] = "frederic";
etudiant[6] = "gregory";
etudiant[7] = "camille";
etudiant[8] = "anthony";
etudiant[9] = "cedric";
etudiant[10] = "stephane";
etudiant[11] = "perrine";
etudiant[12] = "théo";
etudiant[13] = "outhman";
etudiant[14] = "halim";
etudiant[15] = "zakaria";

function afficher() {
    for (i = 0; i < 16; i++) {
        console.log(etudiant[i])
        if (etudiant [i] === "stephane") {
            break;
        } 
    }
}

function afficher2() {
    for (i = 0; i < 16; i++) {
        console.log(etudiant[i])
        if (etudiant [i] === "stephane") {
            console.log("stephane détecter")
            continue;
        } 
    }
}


console.log("tableaux 1 :","\n")
afficher();
console.log(" ")
console.log("tableaux 2 :","\n")
afficher2();
/*---------------------------------------------------------------------------------------------------------------------------*/

const toto = ["27 ans - Maubeuge"];

function eleve(toto) {
  return toto = document.getElementById("etudiant").value;
}

function myFunction() {
  document.getElementById("demo").innerHTML = toto.find(eleve);
}