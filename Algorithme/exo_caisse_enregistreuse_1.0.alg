<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER total_hors_taxe"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" arrondiAuto="vrai" nbDecimales="8" totalBoucles="5000000" epaisseurPoint="2" maxBoucle="500000" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="plat EST_DU_TYPE NOMBRE" code="1#NOMBRE#plat"/>
        <item algoitem="supplement EST_DU_TYPE NOMBRE" code="1#NOMBRE#supplement"/>
        <item algoitem="boisson EST_DU_TYPE NOMBRE" code="1#NOMBRE#boisson"/>
        <item algoitem="total EST_DU_TYPE NOMBRE" code="1#NOMBRE#total"/>
        <item algoitem="tva EST_DU_TYPE NOMBRE" code="1#NOMBRE#tva"/>
        <item algoitem="total_hors_taxe EST_DU_TYPE NOMBRE" code="1#NOMBRE#total_hors_taxe"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;menu&quot;" code="4#menu#1"/>
        <item algoitem="LIRE boisson" code="2#boisson#pasliste"/>
        <item algoitem="LIRE plat" code="2#plat#pasliste"/>
        <item algoitem="LIRE supplement" code="2#supplement#pasliste"/>
        <item algoitem="AFFICHER &quot;addition&quot;" code="4#addition#1"/>
        <item algoitem="total PREND_LA_VALEUR (plat*1.1)+(supplement*1.1)+(boisson*1.1)" code="5#total#(plat*1.1)+(supplement*1.1)+(boisson*1.1)#pasliste"/>
        <item algoitem="AFFICHER total" code="3#total#1#pasliste"/>
        <item algoitem="AFFICHER &quot;tva&quot;" code="4#tva#1"/>
        <item algoitem="tva PREND_LA_VALEUR (plat*1.1)+(supplement*1.1)+(boisson*1.1)-(plat+supplement+boisson)" code="5#tva#(plat*1.1)+(supplement*1.1)+(boisson*1.1)-(plat+supplement+boisson)#pasliste"/>
        <item algoitem="AFFICHER tva" code="3#tva#1#pasliste"/>
        <item algoitem="total_hors_taxe PREND_LA_VALEUR plat+supplement+boisson" code="5#total_hors_taxe#plat+supplement+boisson#pasliste"/>
        <item algoitem="AFFICHER &quot;hors_taxe&quot;" code="4#hors_taxe#1"/>
        <item algoitem="AFFICHER total_hors_taxe" code="3#total_hors_taxe#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
