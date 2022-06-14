<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER agio"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2defaut="" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param arrondiAuto="vrai" nbDecimales="8" totalAffichages="1000" epaisseurPoint="2" maxBoucle="500000" totalBoucles="5000000" epaisseurLigne="2"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="crédit EST_DU_TYPE NOMBRE" code="1#NOMBRE#crédit"/>
        <item algoitem="retrait EST_DU_TYPE NOMBRE" code="1#NOMBRE#retrait"/>
        <item algoitem="solde EST_DU_TYPE NOMBRE" code="1#NOMBRE#solde"/>
        <item algoitem="agio EST_DU_TYPE NOMBRE" code="1#NOMBRE#agio"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Combien voulez vous ? &quot;" code="4#Combien voulez vous ? #1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="AFFICHER &quot;Crédit : &quot;" code="4#Crédit : #0"/>
        <item algoitem="crédit PREND_LA_VALEUR 50" code="5#crédit#50#pasliste"/>
        <item algoitem="AFFICHER crédit" code="3#crédit#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Taper la somme désirer : &quot;" code="4#Taper la somme désirer : #0"/>
        <item algoitem="LIRE retrait" code="2#retrait#pasliste"/>
        <item algoitem="SI (retrait > 50) ALORS" code="6#retrait > 50">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="solde PREND_LA_VALEUR crédit - retrait - 8" code="5#solde#crédit - retrait - 8#pasliste"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="solde PREND_LA_VALEUR crédit - retrait" code="5#solde#crédit - retrait#pasliste"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="AFFICHER &quot;Nouveau solde : &quot;" code="4#Nouveau solde : #0"/>
        <item algoitem="AFFICHER solde" code="3#solde#1#pasliste"/>
        <item algoitem="agio PREND_LA_VALEUR - 8 * (retrait > 50)" code="5#agio#- 8 * (retrait > 50)#pasliste"/>
        <item algoitem="AFFICHER &quot;agio : &quot;" code="4#agio : #0"/>
        <item algoitem="AFFICHER agio" code="3#agio#1#pasliste"/>
        <item algoitem="AFFICHER &quot;Taper la somme désirer : &quot;" code="4#Taper la somme désirer : #1"/>
        <item algoitem="LIRE retrait" code="2#retrait#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
