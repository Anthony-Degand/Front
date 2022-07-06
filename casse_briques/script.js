
// https://developer.mozilla.org/fr/docs/Games/Tutorials/2D_Breakout_game_pure_JavaScript/Build_the_brick_field


var canvas = document.getElementById("myCanvas"); // "l'écran"
var ctx = canvas.getContext("2d"); // matérialisation 2d ?
var ballRadius = 10; // le rayon de la balle
var x = canvas.width/2; // coordonnées horizontal à l'interieur du canvas
var y = canvas.height-30; //coordonnées vertical à l'interieur du canvas
var dx = 2;  // attribuer une valeur a dx
var dy = -2;  // attribuer une valeur a dy
var paddleHeight = 10; // hauteur de la raquette
var paddleWidth = 75; // largeur de la raquette
var paddleX = (canvas.width-paddleWidth)/2;
var rightPressed = false; // le temps que la touche "droite" du clavier n'est pas enfoncer, retourne faux 
var leftPressed = false; // le temps que la touche "gauche" du clavier n'est pas enfoncer, retourne faux
var brickRowCount = 3;                //  |
var brickColumnCount = 5;              // |
var brickWidth = 75;                    //|
var brickHeight = 20;                  // | Ici on défini dans l'ordre le nombre de lignes et de colonnes de briques, 
var brickPadding = 10;                 // |mais également une hauteur, une largeur et un espacement (padding) entre les briques pour 
var brickOffsetTop = 30;                //|qu'elles ne se touchent pas entre elles et qu'elles ne commencent pas a être tracées sur le 
var brickOffsetLeft = 30;             //  |bord du canevas.

var bricks = [];  //Nous allons placer nos briques dans un tableau à deux dimensions. Il contiendra les colonnes de briques (c), qui à leur tour contiendront les lignes de briques (r) qui chacune contiendront un objet défini par une position x et y pour afficher chaque brique sur l'écran
for(var c=0; c<brickColumnCount; c++) {
    bricks[c] = [];
    for(var r=0; r<brickRowCount; r++) {
        bricks[c][r] = { x: 0, y: 0 };
    }
}

document.addEventListener("keydown", keyDownHandler, false); // détecte quand on presse une touche au clavier et déclanche une fonction
document.addEventListener("keyup", keyUpHandler, false);    // détecte quand on relache une touche au clavier et déclanche une fonction

function keyDownHandler(e) { 
    if(e.keyCode == 39) {
        rightPressed = true;
    }                                   
    else if(e.keyCode == 37) {
        leftPressed = true;
    }
}
function keyUpHandler(e) { 
    if(e.keyCode == 39) {  
        rightPressed = false;
    }
    else if(e.keyCode == 37) { 
        leftPressed = false;
    }
}

function drawBall() {
    ctx.beginPath(); //methode ?
    ctx.arc(x, y, ballRadius, 0, Math.PI*2);
    ctx.fillStyle = "#0095DD"; // choisir une couleurs
    ctx.fill(); // appliquer la couleur
    ctx.closePath(); // fin methode ?
}
function drawPaddle() { // fonction qui crée la raquette
    ctx.beginPath(); // debut de la méthode
    ctx.rect(paddleX, canvas.height-paddleHeight, paddleWidth, paddleHeight); // création du rectangle
    ctx.fillStyle = "#0095DD"; // choix de la couleur 
    ctx.fill(); // appliquer la couleur
    ctx.closePath(); // fin de la méthode
}

function draw() { //definir une boucle de dessin
    ctx.clearRect(0, 0, canvas.width, canvas.height); // éffacer l'ancienne position de la balle a chaques mouvement 
    drawBall(); // lancer la fonction drawball
    drawPaddle(); // afficher la raquette
    
    if(x + dx > canvas.width-ballRadius || x + dx < ballRadius) { // rebondit a gauche et a droite à l'impact du bord de la balle
        dx = -dx;
    }
    if(y + dy < ballRadius) { // rebondit en haut et en bas à l'impact du bord de la balle
        dy = -dy;
    }
    else if(y + dy > canvas.height-ballRadius) {
        if(x > paddleX && x < paddleX + paddleWidth) { // peut rebondir sur la raquette
            dy = -dy;
        }
        else {
            alert("GAME OVER");                 // game over si elle touche le mur du bas
            document.location.reload();
        }
    }
    
    if(rightPressed && paddleX < canvas.width-paddleWidth) { // si je presse la fléche de droite la raquette se déplace de 7 pixels sur la droite et l'empéche de sortir du canvas
        paddleX += 7;
    }
    else if(leftPressed && paddleX > 0) {  // si je presse la fléche de gauche la raquette se déplace de 7 pixels sur la gauche et je l'empéche de sortir de la zone
        paddleX -= 7;
    }
    
    x += dx;
    y += dy;
}

setInterval(draw, 10); //appeler la fonction draw toutes les 10 millisecondes