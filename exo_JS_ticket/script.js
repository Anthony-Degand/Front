//variable
var prix_plat_du_jour = 10.00;
var prix_supp_cruditer = 1.00;
var prix_coca = 1.00;
var prix_ht = prix_plat_du_jour + prix_coca + prix_supp_cruditer;
var tva = (prix_plat_du_jour * 1.1) + (prix_supp_cruditer * 1.1) + (prix_coca * 1.1) - ( prix_plat_du_jour + prix_supp_cruditer + prix_coca );
var prix_ttc = prix_ht * tva;
//article
document.write("___________________________");
document.write("</br>");
document.write("___________Menu___________");
document.write("</br> <br/>");
document.write("plat du jour : ");
document.write(prix_plat_du_jour);
document.write(" €");
document.write("</br> <br/>");

document.write("Supplément crudité : ");
document.write(prix_supp_cruditer);
document.write(" €");
document.write("</br> <br/>");

document.write("Coca : ");
document.write(prix_coca);
document.write(" €");
document.write("</br>");
//payer
document.write("___________________________");
document.write("</br>");
document.write("à payer : ");
document.write("</br></br>");
document.write("TTC : ")
document.write(prix_ttc)
document.write(" €")
document.write("</br></br>");

document.write("H.T. : ")
document.write(prix_ht)
document.write(" €")
document.write("</br></br>");

document.write("TVA : ")
document.write(tva)
document.write(" €")
document.write("</br>");
document.write("___________________________");
document.write("</br>");
document.write("___________________________");
//fin