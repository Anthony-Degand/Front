<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_ALGORITHME"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalBoucles="5000000" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="note1 EST_DU_TYPE NOMBRE" code="1#NOMBRE#note1"/>
        <item algoitem="note2 EST_DU_TYPE NOMBRE" code="1#NOMBRE#note2"/>
        <item algoitem="note3 EST_DU_TYPE NOMBRE" code="1#NOMBRE#note3"/>
        <item algoitem="note4 EST_DU_TYPE NOMBRE" code="1#NOMBRE#note4"/>
        <item algoitem="note5 EST_DU_TYPE NOMBRE" code="1#NOMBRE#note5"/>
        <item algoitem="moyenne EST_DU_TYPE NOMBRE" code="1#NOMBRE#moyenne"/>
        <item algoitem="prenom EST_DU_TYPE NOMBRE" code="1#NOMBRE#prenom"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Nom : Toto&quot;" code="4#Nom : Toto#1"/>
        <item algoitem="//moyenne" code="19#moyenne"/>
        <item algoitem="LIRE note1" code="2#note1#pasliste"/>
        <item algoitem="LIRE note2" code="2#note2#pasliste"/>
        <item algoitem="LIRE note3" code="2#note3#pasliste"/>
        <item algoitem="LIRE note4" code="2#note4#pasliste"/>
        <item algoitem="LIRE note5" code="2#note5#pasliste"/>
        <item algoitem="moyenne PREND_LA_VALEUR (note1+note2+note3+note4+note5)/5" code="5#moyenne#(note1+note2+note3+note4+note5)/5#pasliste"/>
        <item algoitem="AFFICHER &quot;Moyenne de l'éleve&quot;" code="4#Moyenne de l'éleve#1"/>
        <item algoitem="AFFICHER moyenne" code="3#moyenne#1#pasliste"/>
        <item algoitem="SI (moyenne > 10) ALORS" code="6#moyenne > 10">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Recu&quot;" code="4#Recu#1"/>
            <item algoitem="SI (moyenne > 15) ALORS" code="6#moyenne > 15">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;felicitation&quot;" code="4#felicitation#1"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;reffuser&quot;" code="4#reffuser#1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
