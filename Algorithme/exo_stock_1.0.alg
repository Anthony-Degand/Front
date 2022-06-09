<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="prix_ht PREND_LA_VALEUR (prix_plat*qt_plat)+(prix_supp*qt_supp)+(prix_boisson*qt_boisson)" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2defaut="" F2para="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" arrondiAuto="vrai" epaisseurLigne="2" totalBoucles="5000000" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#prix_plat" algoitem="prix_plat EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prix_supp" algoitem="prix_supp EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prix_boisson" algoitem="prix_boisson EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#qt_plat" algoitem="qt_plat EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#qt_boisson" algoitem="qt_boisson EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#stock_plat" algoitem="stock_plat EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#stock_supp" algoitem="stock_supp EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#stock_boisson" algoitem="stock_boisson EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prix_ht" algoitem="prix_ht EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#tva" algoitem="tva EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prix_ttc" algoitem="prix_ttc EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#qt_supp" algoitem="qt_supp EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#stock_plat#10#pasliste" algoitem="stock_plat PREND_LA_VALEUR 10"/>
        <item code="5#stock_supp#10#pasliste" algoitem="stock_supp PREND_LA_VALEUR 10"/>
        <item code="5#stock_boisson#10#pasliste" algoitem="stock_boisson PREND_LA_VALEUR 10"/>
        <item code="5#prix_ht#(prix_plat*qt_plat)+(prix_supp*qt_supp)+(prix_boisson*qt_boisson)#pasliste" algoitem="prix_ht PREND_LA_VALEUR (prix_plat*qt_plat)+(prix_supp*qt_supp)+(prix_boisson*qt_boisson)"/>
        <item code="5#tva#(prix_plat*qt_plat*1.1)+(prix_supp*qt_supp*1.1)+(prix_boisson*qt_boisson*1.1)-(prix_plat*qt_plat)+(prix_supp*qt_supp)+(prix_boisson*qt_boisson)#pasliste" algoitem="tva PREND_LA_VALEUR (prix_plat*qt_plat*1.1)+(prix_supp*qt_supp*1.1)+(prix_boisson*qt_boisson*1.1)-(prix_plat*qt_plat)+(prix_supp*qt_supp)+(prix_boisson*qt_boisson)"/>
        <item code="5#prix_ttc#prix_ht+tva#pasliste" algoitem="prix_ttc PREND_LA_VALEUR prix_ht+tva"/>
        <item code="4#Menu :#1" algoitem="AFFICHER &quot;Menu :&quot;"/>
        <item code="4#prix plat#1" algoitem="AFFICHER &quot;prix plat&quot;"/>
        <item code="2#prix_plat#pasliste" algoitem="LIRE prix_plat"/>
        <item code="4#quantite#1" algoitem="AFFICHER &quot;quantite&quot;"/>
        <item code="2#qt_plat#pasliste" algoitem="LIRE qt_plat"/>
        <item code="15#qt_plat>stock_plat" algoitem="TANT_QUE (qt_plat>stock_plat) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#stock épuiser#1" algoitem="AFFICHER &quot;stock épuiser&quot;"/>
            <item code="3#stock_plat#1#pasliste" algoitem="AFFICHER stock_plat"/>
            <item code="2#qt_plat#pasliste" algoitem="LIRE qt_plat"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#prix supplement#1" algoitem="AFFICHER &quot;prix supplement&quot;"/>
        <item code="2#prix_supp#pasliste" algoitem="LIRE prix_supp"/>
        <item code="4#quantite#1" algoitem="AFFICHER &quot;quantite&quot;"/>
        <item code="2#qt_supp#pasliste" algoitem="LIRE qt_supp"/>
        <item code="15#qt_supp>stock_supp" algoitem="TANT_QUE (qt_supp>stock_supp) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#stock épuiser#1" algoitem="AFFICHER &quot;stock épuiser&quot;"/>
            <item code="3#stock_supp#1#pasliste" algoitem="AFFICHER stock_supp"/>
            <item code="2#qt_supp#pasliste" algoitem="LIRE qt_supp"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#prix boisson#1" algoitem="AFFICHER &quot;prix boisson&quot;"/>
        <item code="2#prix_boisson#pasliste" algoitem="LIRE prix_boisson"/>
        <item code="4#quantite#1" algoitem="AFFICHER &quot;quantite&quot;"/>
        <item code="2#qt_boisson#pasliste" algoitem="LIRE qt_boisson"/>
        <item code="15#qt_boisson>stock_boisson" algoitem="TANT_QUE (qt_boisson>stock_boisson) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="4#stock épuiser#1" algoitem="AFFICHER &quot;stock épuiser&quot;"/>
            <item code="3#stock_boisson#1#pasliste" algoitem="AFFICHER stock_boisson"/>
            <item code="2#qt_boisson#pasliste" algoitem="LIRE qt_boisson"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#Net à payer#1" algoitem="AFFICHER &quot;Net à payer&quot;"/>
        <item code="3#prix_ttc#1#pasliste" algoitem="AFFICHER prix_ttc"/>
        <item code="4#detail :#1" algoitem="AFFICHER &quot;detail :&quot;"/>
        <item code="3#prix_ht#1#pasliste" algoitem="AFFICHER prix_ht"/>
        <item code="3#tva#0#pasliste" algoitem="AFFICHER tva"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
