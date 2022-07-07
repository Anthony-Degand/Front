
// https://developer.mozilla.org/fr/docs/Games/Tutorials/2D_Breakout_game_pure_JavaScript/Build_the_brick_field


var canvas = document.getElementById("myCanvas"); // "l'écran"
var ctx = canvas.getContext("2d"); // matérialisation 2d ?
var ballRadius = 10; // le rayon de la balle
var x = canvas.width/2; // coordonnées horizontal à l'interieur du canvas diviser par 2
var y = canvas.height-30; //coordonnées vertical à l'interieur du canvas - 30 pixels
var dx = 2;  // attribuer une valeur a dx
var dy = -2;  // attribuer une valeur a dy
var paddleHeight = 10; // hauteur de la raquette
var paddleWidth = 75; // largeur de la raquette
var paddleX = (canvas.width-paddleWidth)/2; // canvas horizontal(480px) - la largeur de la raquette diviser par 2 (37.5px)
var rightPressed = false; // le temps que la touche "droite" du clavier n'est pas enfoncer, retourne faux 
var leftPressed = false; // le temps que la touche "gauche" du clavier n'est pas enfoncer, retourne faux
var brickRowCount = 3;  // 3 lignes de briques
var brickColumnCount = 5; // 5 briques par lignes
var brickWidth = 75; // les briques ont 75 pixels de large
var brickHeight = 20; // les briques ont 20 pixels de hauteur                            
var brickPadding = 10; // les briques ont 10 pixels de padding 
var brickOffsetTop = 30;  // elle débute à 30 pixels du haut  ( pour ne pas mordre sur les bords)
var brickOffsetLeft = 30; // elle débute à 30 pixels de gauche ( pour ne pas mordre sur les bords)

var bricks = [];  //Nous allons placer nos briques dans un tableau à deux dimensions. Il contiendra les colonnes de briques (c), qui à leur tour contiendront les lignes de briques (r) qui chacune contiendront un objet définit par une position x et y pour afficher chaque brique sur l'écran
for(var c=0; c<brickColumnCount; c++) { // je crée une boucle et je déclare l'itération "c" égale à 0 , je lui dit que : le temps que "c" est inférieur à mon nombre de colonnes de brique, il prend un à chaque tours.  
    bricks[c] = []; // je met dans ma variable brique le nombre de colonnes
    for(var r=0; r<brickRowCount; r++) { // je crée une boucle et déclare l'itération "r" égale à 0, lui dit que le temps que "r" est inférieur à mon nombre de ligne de brique, il prend un à chaque tours.
        bricks[c][r] = { x: 0, y: 0 }; // je met maintenent dans ma variable "bricks" le nombre de ligne et de colonne de mes briques et lui dit que c'est égale au coordonnée horizontal et vertial 0.
    }
}

document.addEventListener("keydown", keyDownHandler, false); // détecte quand on presse une touche au clavier et déclanche une fonction pour gérer la touche
document.addEventListener("keyup", keyUpHandler, false);    // détecte quand on relache une touche au clavier et déclanche une fonction pour gérer la touche

function keyDownHandler(e) { // je déclare une fonction pour gérer la touche qui est pressée 
    if(e.keyCode == 39) {
        rightPressed = true; //droite
    }                                   
    else if(e.keyCode == 37) { //gauche
        leftPressed = true;
    }
}
function keyUpHandler(e) {  // je déclare une fonction quand la touche est relacher
    if(e.keyCode == 39) {  
        rightPressed = false; // droite
    }
    else if(e.keyCode == 37) { //gauche
        leftPressed = false;
    }
}

function drawBall() { // fonction qui crée la balle 
    ctx.beginPath(); // méthode 
    ctx.arc(x, y, ballRadius, 0, Math.PI*2); // au coordonée horizontal diviser par 2 et vertical -30 pixels a l'interieur du canvas j'ai une balle d'un rayon de 10 pixels, "..."
    ctx.fillStyle = "#0095DD"; // choisir une couleurs
    ctx.fill(); // appliquer la couleur ( à la balle )
    ctx.closePath(); // fin méthode 
}
function drawPaddle() { // fonction qui crée la raquette
    ctx.beginPath(); // début de la méthode
    ctx.rect(paddleX, canvas.height-paddleHeight, paddleWidth, paddleHeight); // création du rectangle : canvas horizontal(480px) - la largeur de la raquette diviser par 2 (37.5px), je lui dit que la hauteur du canvas (320px) - la hauteur de la raquette (72px), je lui dit la largeur de la raquette et la longueur de la raquette.
    ctx.fillStyle = "#0095DD"; // choix de la couleur 
    ctx.fill(); // appliquer la couleur a la raquette
    ctx.closePath(); // fin de la méthode
}

function drawBricks() { // fonction qui crée les briques
    for(var c=0; c<brickColumnCount; c++) { // boucle qui crée les colonnes des briques
        for(var r=0; r<brickRowCount; r++) { // boucle qui crée les lignes des briques
            var brickX = (c*(brickWidth+brickPadding))+brickOffsetLeft; // je déclare une variable brickX qui est égale à mon itération "c" multiplier par la largeur de mes briques + le padding de mes briques + le décallage par rapport à mes briques de gauche
            var brickY = (r*(brickHeight+brickPadding))+brickOffsetTop; // je déclare une variable brickY qui est égale à mon itération "r" multiplier par la largeur de mes briques + le padding de mes briques + le décallage pa rapport à mes briques du haut 
            bricks[c][r].x = brickX; // je dit que bricks " 5 colonnes" " 3 lignes" sur l'axe horizontal est égale à la variable "bricksX"
            bricks[c][r].y = brickY; // je dit que bricks " 5 colonnes" " 3 lignes" sur l'axe vertical est égale à la variable "bricksY"
            ctx.beginPath(); // début de la méthode beginpath
            ctx.rect(brickX, brickY, brickWidth, brickHeight); // mes briques horizontal et vertical d'une hauteur de "" et une largeur de ""
            ctx.fillStyle = "#0095DD"; // je leur choisis la couleur 
            ctx.fill(); // l'applique sur mes briques
            ctx.closePath(); // ferme la méthode
        }
    }
}

function draw() { // crée un effet de mouvement de la balle 
    ctx.clearRect(0, 0, canvas.width, canvas.height); // éffacer l'ancienne position de la balle a chaques mouvement en longueur ou largeur dans le canvas
    drawBall(); // lancer la fonction crée la balle
    drawPaddle(); // lancer la fonction crée la raquette
    
    if(x + dx > canvas.width-ballRadius || x + dx < ballRadius) { // faire rebondir la balle sur le côter gauche et droit du canvas ( à l'impact du bord de la balle )
        dx = -dx; // si la moitier de la largeur du canvas (donc 240px) + 2 est supérieur a la largeur du canvas (480px) + le rayon de la balle (10px) ou la moitier de la largeur du canvas (donc 240px) + 2 et inferieur au rayon de la balle (10px) alors 2 égale -2
    }
    if(y + dy < ballRadius) { // rebondit en haut et en bas à l'impact du bord de la balle
        dy = -dy; // si la moitier de la hauteur du canvas - 30px -2 est inferieur au rayon de la balle (10px) , -2 devient +2
    }
    else if(y + dy > canvas.height-ballRadius) { // sinon si la moitier de la hauteur du canvas (donc 320px) - 30px -2 est supérieur à la hauteur du canvas (320px) - le rayon de la balle (10px)
        if(x > paddleX && x < paddleX + paddleWidth) { // peut rebondir sur la raquette
            dy = -dy; // si la moitier du canvas horizontal et supérieur au canvas horizontal(480px) - la largeur de la raquette diviser par 2 (37.5px) et est égale à  la moitier du canvas horizontal inferieur au canvas horizontal(480px) - la largeur de la raquette diviser par 2 (37.5px) + la largeur de la raquette
        }
        else {
            alert("GAME OVER");                 // alerte game over si la balle touche le mur du bas
            document.location.reload();         // la page est recharger a zero
        }
    }
    
    if(rightPressed && paddleX < canvas.width-paddleWidth) { // si je presse la fléche de droite la raquette se déplace de 7 pixels sur la droite et l'empéche de sortir du canvas
        paddleX += 7;
    }
    else if(leftPressed && paddleX > 0) {  // si je presse la fléche de gauche la raquette se déplace de 7 pixels sur la gauche et je l'empéche de sortir de la zone
        paddleX -= 7;
    }
    
    x += dx; // coordonnées horizontal à l'interieur du canvas diviser par 2 + "" = 2
    y += dy; // coordonnées vertical à l'interieur du canvas - 30 pixels + "" = -2
}

setInterval(draw, 10); //appeler la fonction draw toutes les 10 millisecondes