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

etudiantx = new Array(2);

etudiantx [0[0,1],1[0,1]];

toto[0][0] = "27 ans";
toto[0][1] = "Maubeuge";

titi[1][0] = "38 ans";
titi[1][1] = "Valencienne";


const toto = [ 40, "Maubeuge"];
const titi = [25, "Valencienne"];

function etudiant(toto) {
  return toto === document.getElementById("etudiant").value;
}

function myFunction() {
  document.getElementById("reponse").innerHTML = toto.find(etudiant);
}