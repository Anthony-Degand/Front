<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="LIRE jules" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" epaisseurPoint="2" nbDecimales="8" totalAffichages="1000" totalBoucles="5000000" epaisseurLigne="2" arrondiAuto="vrai"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="compteur EST_DU_TYPE NOMBRE" code="1#NOMBRE#compteur"/>
        <item algoitem="listedenombres EST_DU_TYPE LISTE" code="1#LISTE#listedenombres"/>
        <item algoitem="pierre EST_DU_TYPE NOMBRE" code="1#NOMBRE#pierre"/>
        <item algoitem="tom EST_DU_TYPE NOMBRE" code="1#NOMBRE#tom"/>
        <item algoitem="jules EST_DU_TYPE NOMBRE" code="1#NOMBRE#jules"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="pierre PREND_LA_VALEUR 10" code="5#pierre#10#pasliste"/>
        <item algoitem="tom PREND_LA_VALEUR 0" code="5#tom#0#pasliste"/>
        <item algoitem="jules PREND_LA_VALEUR 15" code="5#jules#15#pasliste"/>
        <item algoitem="POUR compteur ALLANT_DE 1 A 3" code="12#compteur#1#3">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="LIRE jules" code="2#jules#pasliste"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="POUR compteur ALLANT_DE 1 A 3" code="12#compteur#1#3">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER jules" code="3#jules#0#pasliste"/>
            <item algoitem="AFFICHER &quot; &quot;" code="4# #1"/>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
