<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_ALGORITHME" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2etat="inactif" F2para="" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" nbDecimales="8" epaisseurPoint="2" totalBoucles="5000000" totalAffichages="1000" arrondiAuto="vrai" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions">
        <item algoitem="FONCTION affichage_presence(jimmy)" code="201#affichage_presence#jimmy">
            <item algoitem="VARIABLES_FONCTION" code="202#declarationsvariablesfonction"/>
            <item algoitem="DEBUT_FONCTION" code="203#debutfonction"/>
            <item algoitem="SI (jimmy > 0) ALORS" code="6#jimmy > 0">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;Présent&quot;" code="4#Présent#1"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="AFFICHER &quot;Absent&quot;" code="4#Absent#1"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_FONCTION" code="204#finfonction"/>
        </item>
    </item>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="jimmy EST_DU_TYPE NOMBRE" code="1#NOMBRE#jimmy"/>
        <item algoitem="cedric EST_DU_TYPE NOMBRE" code="1#NOMBRE#cedric"/>
        <item algoitem="stephane EST_DU_TYPE NOMBRE" code="1#NOMBRE#stephane"/>
        <item algoitem="greg EST_DU_TYPE NOMBRE" code="1#NOMBRE#greg"/>
        <item algoitem="outman EST_DU_TYPE NOMBRE" code="1#NOMBRE#outman"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Fiche de présence &quot;" code="4#Fiche de présence #1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="AFFICHER &quot;1 = Présent 0 = Absent&quot;" code="4#1 = Présent 0 = Absent#1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="LIRE jimmy" code="2#jimmy#pasliste"/>
        <item algoitem="APPELER_FONCTION affichage_presence (jimmy)" code="206#affichage_presence (jimmy)"/>
        <item algoitem="LIRE cedric" code="2#cedric#pasliste"/>
        <item algoitem="APPELER_FONCTION affichage_presence (cedric)" code="206#affichage_presence (cedric)"/>
        <item algoitem="LIRE stephane" code="2#stephane#pasliste"/>
        <item algoitem="APPELER_FONCTION affichage_presence (stephane)" code="206#affichage_presence (stephane)"/>
        <item algoitem="LIRE greg" code="2#greg#pasliste"/>
        <item algoitem="APPELER_FONCTION affichage_presence (greg)" code="206#affichage_presence (greg)"/>
        <item algoitem="LIRE outman" code="2#outman#pasliste"/>
        <item algoitem="APPELER_FONCTION affichage_presence (outman)" code="206#affichage_presence (outman)"/>
        <item algoitem="SI (outman > 0) ALORS" code="6#outman > 0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Doublez les stock de café !&quot;" code="4#Doublez les stock de café !#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
