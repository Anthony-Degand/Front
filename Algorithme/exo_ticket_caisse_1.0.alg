<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_ALGORITHME"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" totalBoucles="5000000" epaisseurPoint="2" epaisseurLigne="2" maxBoucle="500000" arrondiAuto="vrai" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#tva" algoitem="tva EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prix_ht" algoitem="prix_ht EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prix_ttc" algoitem="prix_ttc EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prix_plat_du_jour" algoitem="prix_plat_du_jour EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prix_coca" algoitem="prix_coca EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#prix_supp_cruditer" algoitem="prix_supp_cruditer EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#prix_plat_du_jour#10.00#pasliste" algoitem="prix_plat_du_jour PREND_LA_VALEUR 10.00"/>
        <item code="5#prix_supp_cruditer#1.00#pasliste" algoitem="prix_supp_cruditer PREND_LA_VALEUR 1.00"/>
        <item code="5#prix_coca#1.00#pasliste" algoitem="prix_coca PREND_LA_VALEUR 1.00"/>
        <item code="5#prix_ht#prix_plat_du_jour+prix_coca+prix_supp_cruditer#pasliste" algoitem="prix_ht PREND_LA_VALEUR prix_plat_du_jour+prix_coca+prix_supp_cruditer"/>
        <item code="5#tva#(prix_plat_du_jour*1.1)+(prix_supp_cruditer*1.1)+(prix_coca*1.1)-(prix_plat_du_jour+prix_coca+prix_supp_cruditer)#pasliste" algoitem="tva PREND_LA_VALEUR (prix_plat_du_jour*1.1)+(prix_supp_cruditer*1.1)+(prix_coca*1.1)-(prix_plat_du_jour+prix_coca+prix_supp_cruditer)"/>
        <item code="5#prix_ttc#prix_ht*tva#pasliste" algoitem="prix_ttc PREND_LA_VALEUR prix_ht*tva"/>
        <item code="4#Menu :#1" algoitem="AFFICHER &quot;Menu :&quot;"/>
        <item code="4#plat du jour#1" algoitem="AFFICHER &quot;plat du jour&quot;"/>
        <item code="3#prix_plat_du_jour#1#pasliste" algoitem="AFFICHER prix_plat_du_jour"/>
        <item code="4#supplement crudité#1" algoitem="AFFICHER &quot;supplement crudité&quot;"/>
        <item code="3#prix_supp_cruditer#1#pasliste" algoitem="AFFICHER prix_supp_cruditer"/>
        <item code="4#coca#1" algoitem="AFFICHER &quot;coca&quot;"/>
        <item code="3#prix_coca#1#pasliste" algoitem="AFFICHER prix_coca"/>
        <item code="4#à payer :#1" algoitem="AFFICHER &quot;à payer :&quot;"/>
        <item code="4#TTC :#1" algoitem="AFFICHER &quot;TTC :&quot;"/>
        <item code="3#prix_ttc#1#pasliste" algoitem="AFFICHER prix_ttc"/>
        <item code="4#PHT :#1" algoitem="AFFICHER &quot;PHT :&quot;"/>
        <item code="3#prix_ht#1#pasliste" algoitem="AFFICHER prix_ht"/>
        <item code="4#TVA :#1" algoitem="AFFICHER &quot;TVA :&quot;"/>
        <item code="3#tva#0#pasliste" algoitem="AFFICHER tva"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
