<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurLigne="2" epaisseurPoint="2" nbDecimales="8" totalBoucles="5000000" totalAffichages="1000" arrondiAuto="vrai" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="present EST_DU_TYPE NOMBRE" code="1#NOMBRE#present"/>
        <item algoitem="absent EST_DU_TYPE NOMBRE" code="1#NOMBRE#absent"/>
        <item algoitem="jimmy EST_DU_TYPE NOMBRE" code="1#NOMBRE#jimmy"/>
        <item algoitem="stephane EST_DU_TYPE NOMBRE" code="1#NOMBRE#stephane"/>
        <item algoitem="greg EST_DU_TYPE NOMBRE" code="1#NOMBRE#greg"/>
        <item algoitem="outman EST_DU_TYPE NOMBRE" code="1#NOMBRE#outman"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Fiche de présence &quot;" code="4#Fiche de présence #1"/>
        <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
        <item algoitem="AFFICHER &quot; 1 = Présent   0 = Absent&quot;" code="4# 1 = Présent   0 = Absent#1"/>
        <item algoitem="AFFICHER &quot;  &quot;" code="4#  #1"/>
        <item algoitem="LIRE jimmy" code="2#jimmy#pasliste"/>
        <item algoitem="SI (jimmy >  0) ALORS" code="6#jimmy >  0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Jimmy : Présent&quot;" code="4#Jimmy : Présent#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Jimmy : Absent&quot;" code="4#Jimmy : Absent#1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="LIRE stephane" code="2#stephane#pasliste"/>
        <item algoitem="SI (stephane > 0) ALORS" code="6#stephane > 0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Stephane : Présent&quot;" code="4#Stephane : Présent#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Stephane : Absent &quot;" code="4#Stephane : Absent #1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="LIRE greg" code="2#greg#pasliste"/>
        <item algoitem="SI (greg > 0) ALORS" code="6#greg > 0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Greg : Présent&quot;" code="4#Greg : Présent#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Greg : Absent&quot;" code="4#Greg : Absent#1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
        <item algoitem="LIRE outman" code="2#outman#pasliste"/>
        <item algoitem="SI (outman > 0) ALORS" code="6#outman > 0">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;Outman : Présent&quot;" code="4#Outman : Présent#1"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;Outman : Absent&quot;" code="4#Outman : Absent#1"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
