<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_POUR" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalBoucles="5000000" arrondiAuto="vrai" totalAffichages="1000" maxBoucle="500000" epaisseurLigne="2" nbDecimales="8" epaisseurPoint="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="notes EST_DU_TYPE NOMBRE" code="1#NOMBRE#notes"/>
        <item algoitem="Toto EST_DU_TYPE NOMBRE" code="1#NOMBRE#Toto"/>
        <item algoitem="moyenne EST_DU_TYPE NOMBRE" code="1#NOMBRE#moyenne"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="//Boucle pour la saisie des notes" code="19#Boucle pour la saisie des notes"/>
        <item algoitem="POUR Toto ALLANT_DE 1 A 5" code="12#Toto#1#5">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Entrez la note : &quot;" code="4#Entrez la note : #0"/>
            <item algoitem="LIRE notes" code="2#notes#pasliste"/>
            <item algoitem="//La boucle va envoyer la note dans la moyenne puis se répéter en envoyant la prochaine jusqu'à avoir les 5 puis diviser par 5  " code="19#La boucle va envoyer la note dans la moyenne puis se répéter en envoyant la prochaine jusqu'à avoir les 5 puis diviser par 5  "/>
            <item algoitem="moyenne PREND_LA_VALEUR moyenne + notes / 5" code="5#moyenne#moyenne + notes / 5#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="//affichage de la moyenne" code="19#affichage de la moyenne"/>
        <item algoitem="AFFICHER &quot;Moyenne géneral : &quot;" code="4#Moyenne géneral : #0"/>
        <item algoitem="AFFICHER moyenne" code="3#moyenne#1#pasliste"/>
        <item algoitem="SI (moyenne > 10 ) ALORS" code="6#moyenne > 10 ">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Statut :&quot;" code="4#Statut :#0"/>
            <item algoitem="AFFICHER &quot; Accepter &quot;" code="4# Accepter #0"/>
            <item algoitem="SI (moyenne > 15) ALORS" code="6#moyenne > 15">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;avec les félicitations !&quot;" code="4#avec les félicitations !#1"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Statut : &quot;" code="4#Statut : #0"/>
                <item algoitem="AFFICHER &quot;Reffuser&quot;" code="4#Reffuser#0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
