<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER de1" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalBoucles="5000000" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" epaisseurPoint="2" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#de1" algoitem="de1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#de2" algoitem="de2 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#total" algoitem="total EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#compteur" algoitem="compteur EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="19#Boucle tant que " algoitem="//Boucle tant que "/>
        <item code="15#total &lt; 21" algoitem="TANT_QUE (total &lt; 21) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="5#de1#ALGOBOX_ALEA_ENT(1,6)#pasliste" algoitem="de1 PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1,6)"/>
            <item code="5#de2#ALGOBOX_ALEA_ENT(1,6)#pasliste" algoitem="de2 PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1,6)"/>
            <item code="5#total#total + ( de1 + de2 )#pasliste" algoitem="total PREND_LA_VALEUR total + ( de1 + de2 )"/>
            <item code="5#compteur#compteur + 1#pasliste" algoitem="compteur PREND_LA_VALEUR compteur + 1"/>
            <item code="3#de1#0#pasliste" algoitem="AFFICHER de1"/>
            <item code="4# #0" algoitem="AFFICHER &quot; &quot;"/>
            <item code="3#de2#1#pasliste" algoitem="AFFICHER de2"/>
            <item code="6#total > 21" algoitem="SI (total > 21) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Total : #0" algoitem="AFFICHER &quot;Total : &quot;"/>
                <item code="3#total#0#pasliste" algoitem="AFFICHER total"/>
                <item code="5#total#0#pasliste" algoitem="total PREND_LA_VALEUR 0"/>
                <item code="4#_________________________#1" algoitem="AFFICHER &quot;_________________________&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#Total : #0" algoitem="AFFICHER &quot;Total : &quot;"/>
        <item code="3#total#1#pasliste" algoitem="AFFICHER total"/>
        <item code="4#____________________________#1" algoitem="AFFICHER &quot;____________________________&quot;"/>
        <item code="4#Vous avais lancé les dés #0" algoitem="AFFICHER &quot;Vous avais lancé les dés &quot;"/>
        <item code="3#compteur#1#pasliste" algoitem="AFFICHER compteur"/>
        <item code="4#fois avant de comter 21#0" algoitem="AFFICHER &quot;fois avant de comter 21&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
