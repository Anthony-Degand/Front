<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Retrait :&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2defaut="" F2etat="inactif"/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" totalBoucles="5000000" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" epaisseurPoint="2" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#action1" algoitem="action1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#action2" algoitem="action2 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#action3" algoitem="action3 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#menu" algoitem="menu EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#operation1" algoitem="operation1 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#operation2" algoitem="operation2 EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#operation3" algoitem="operation3 EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#         Accueil#1" algoitem="AFFICHER &quot;         Accueil&quot;"/>
        <item code="12#menu#1#3" algoitem="POUR menu ALLANT_DE 1 A 3">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Retrait :#0" algoitem="AFFICHER &quot;Retrait :&quot;"/>
            <item code="2#operation1#pasliste" algoitem="LIRE operation1"/>
            <item code="6#operation1 > 1000" algoitem="SI (operation1 > 1000) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Solde insuffisant#0" algoitem="AFFICHER &quot;Solde insuffisant&quot;"/>
                <item code="4#Combient souhaitez vous retirer : #1" algoitem="AFFICHER &quot;Combient souhaitez vous retirer : &quot;"/>
                <item code="2#operation1#pasliste" algoitem="LIRE operation1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="4#Veuillez récupérer vos billets, n'oublier pas votre carte#1" algoitem="AFFICHER &quot;Veuillez récupérer vos billets, n'oublier pas votre carte&quot;"/>
                    <item code="4#à bientot#0" algoitem="AFFICHER &quot;à bientot&quot;"/>
                    <item code="2#menu#pasliste" algoitem="LIRE menu"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
        <item code="103#commentaire" algoitem=""/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
