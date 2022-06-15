
//début
document.write("________Menu : ________");
document.write("</br></br>");
document.write("Coca : ");
var boisson = prompt ("Prix boisson : ");
document.write (boisson," €");
document.write("</br></br>");

document.write ("Plat du jour : ");
var plat = prompt ("Prix plat du jour : ");
document.write(plat," €");
document.write("</br></br>");

document.write ("Supplément : ");
var supplement = prompt ("Prix supplément : ");
document.write(supplement," €");
document.write("</br></br>");
document.write("_____________________");
document.write("</br>");

//addition

document.write("Addition : ");
document.write("</br>");
document.write("_____________________");
document.write("</br></br>");
var total = (boisson*1.1) + (plat*1.1) + (supplement*1.1);
document.write("TTC : ");
document.write(total .toFixed(2)," €")

document.write("</br></br>");
var tva = (boisson*1.1) + (plat*1.1) + (supplement*1.1) - boisson - plat - supplement;
document.write("TVA : ");
document.write(tva .toFixed(2)," €");


document.write("</br></br>");
var htaxe = total - tva;
document.write("H.T. : ");
document.write(htaxe .toFixed(2)," €");




