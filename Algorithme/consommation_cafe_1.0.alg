<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_ALGORITHME"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2para="" F2etat="inactif" F2lignes=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" totalAffichages="1000" maxBoucle="500000" epaisseurLigne="2" totalBoucles="5000000" epaisseurPoint="2" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#cafe" algoitem="cafe EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#stock_cafe" algoitem="stock_cafe EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#stagiaire" algoitem="stagiaire EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#total" algoitem="total EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#Consommation_journaliere" algoitem="Consommation_journaliere EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#hebdomadaire" algoitem="hebdomadaire EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#paquet" algoitem="paquet EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Pour une journée, les stagiaire utilise :#1" algoitem="AFFICHER &quot;Pour une journée, les stagiaire utilise :&quot;"/>
        <item code="12#stagiaire#1#5" algoitem="POUR stagiaire ALLANT_DE 1 A 5">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="2#cafe#pasliste" algoitem="LIRE cafe"/>
            <item code="5#total#total  +  cafe#pasliste" algoitem="total PREND_LA_VALEUR total  +  cafe"/>
            <item code="5#stock_cafe#40 - total#pasliste" algoitem="stock_cafe PREND_LA_VALEUR 40 - total"/>
            <item code="5#Consommation_journaliere#total#pasliste" algoitem="Consommation_journaliere PREND_LA_VALEUR total"/>
            <item code="5#hebdomadaire#Consommation_journaliere * 4.5#pasliste" algoitem="hebdomadaire PREND_LA_VALEUR Consommation_journaliere * 4.5"/>
            <item code="5#paquet#hebdomadaire / 40#pasliste" algoitem="paquet PREND_LA_VALEUR hebdomadaire / 40"/>
            <item code="6#total >=  40" algoitem="SI (total >=  40) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Stock épuiser#1" algoitem="AFFICHER &quot;Stock épuiser&quot;"/>
                <item code="4#Merci de demander des compte a outman.#1" algoitem="AFFICHER &quot;Merci de demander des compte a outman.&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Il reste : #0" algoitem="AFFICHER &quot;Il reste : &quot;"/>
        <item code="3#stock_cafe#0#pasliste" algoitem="AFFICHER stock_cafe"/>
        <item code="4# dosette de café en stock#1" algoitem="AFFICHER &quot; dosette de café en stock&quot;"/>
        <item code="4#La consommation journalière est de : #0" algoitem="AFFICHER &quot;La consommation journalière est de : &quot;"/>
        <item code="3#Consommation_journaliere#0#pasliste" algoitem="AFFICHER Consommation_journaliere"/>
        <item code="4# café#1" algoitem="AFFICHER &quot; café&quot;"/>
        <item code="4#La consommation hebdomadaire est de : #0" algoitem="AFFICHER &quot;La consommation hebdomadaire est de : &quot;"/>
        <item code="3#hebdomadaire#0#pasliste" algoitem="AFFICHER hebdomadaire"/>
        <item code="4# café#1" algoitem="AFFICHER &quot; café&quot;"/>
        <item code="4#Vous devais acheter : #0" algoitem="AFFICHER &quot;Vous devais acheter : &quot;"/>
        <item code="3#paquet#0#pasliste" algoitem="AFFICHER paquet"/>
        <item code="4# paquets de café par semaine#0" algoitem="AFFICHER &quot; paquets de café par semaine&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
