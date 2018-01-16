{
ALGORITHME:JEU_DES_ALLUMETTES_JOUEUR_ORDINATEUR

//BUT: Simuler le jeu des allumettes. Chaque joueur doit retirer à son tour 1,2 ou 3 allumettes sur un tas de 21. Le joueur qui retire la dernière allumette a perdu. Le jeu sera réalisé en textuel et permettra à un joueur d'affronter l'ordinateur.

//PRINCIPE: Une boucle répéter contient le tour du joueur et l'action du programme. Une boucle tantque permet de vérifier l'exactitude de la valeur du joueur. Une série de SI avec des conditions précises permet au programme de s'adapter en fonction du nombre d'allumettes restantes après le tour du joueur. On utilise un booléen pour déterminer qui est le vainqueur et le déclarer après la fin de la boucle.

//ENTREE: nombre d'allumettes retirées par un joueur

//SORTIES: nombre d'allumettes restantes, victoire d'un joueur.

CONST

	ALLUMETTES_MAX<-21:ENTIER
	ALLUMETTES_RETIREES_MAX<-3:ENTIER

VAR

	nb_allumettes,allumettes_retirees:ENTIER
	victoire_joueur:BOOL

DEBUT

	//bloc d'initialisation
	victoire_joueur:VRAI
	nb_allumettes:=ALLUMETTES_MAX;
	allumettes_retirees:=0;
	//fin du bloc d'initialisation

	ECRIRE:"Bienvenue dans le jeu de nim. A son tour, chaque joueur doit retirer 1, 2 ou 3 allumettes. Le joueur qui retirera la derniere allumette perdra !"
	REPETER			// boucle répéter permettant de gérer le tour du joueur et du programme
		ECRIRE:"Il reste ",nb_allumettes," allumettes. C'est à votre tour. Combien d'allumettes retirez-vous ?"
		LIRE allumettes_retirees
		TANTQUE (allumettes_retirees<=0) OU (allumettes_retirees>ALLUMETTES_RETIREES_MAX) FAIRE			//boucle tantque de saisie
			ECRIRE:"Saisie incorrecte, votre nombre n'est pas compris entre 1 et 3. Combien d'allumettes retirez-vous ?"
			LIRE allumettes_retirees
		nb_allumettes<-nb_allumettes-allumettes_retirees
		SI (nb_allumettes<=0) ALORS
			victoire_joueur<-FAUX			//booléen permettant de donner la sortie correcte.
		FINSI
		SI (nb_allumettes>0) ALORS
			SI (nb_allumettes MOD 4=0) ALORS 			// On essaiera toujours de revenir à un nombre multiple de 4 + 1 afin que le joueur finisse par tirer la dernière allumette
				allumettes_retirees<-3
			SINON
				 SI (nb_allumettes MOD 4=1) ALORS  		// Si le joueur gagne, le programme n'en retire qu'un, afin de ralentir le jeu en comptant sur le fait que le joueur se trompe
					allumettes_retirees<-1
				SINON 
					SI (nb_allumettes MOD 4=2) ALORS
						allumettes_retirees<-1
					SINON
						SI (nb_allumettes MOD 4=3) ALORS
							allumettes_retirees<-2
						FINSI
					FINSI
				FINSI
			FINSI
		FINSI
		nb_allumettes<-allumettes-allumettes_retirees;
		ECRIRE:"A mon tour. Je retire ",allumettes_retirees," allumettes."
		SI (nb_allumettes<=0) ALORS
				victoire_joueur<-VRAI
	JUSQUA(nb_allumettes<=0) //la boucle se termine lorsqu'il n'y a plus d'allumette à tirer
	SI victoire_joueur ALORS 	//sortie déterminée selon le booléen
		ECRIRE:"J'ai retiré la dernière allumette, vous avez gagné !"
	SINON
		ECRIRE:"Vous avez retiré la dernière allumette, vous avez perdu."
FIN

---

Jeu d'essai
	//bloc d'initialisation
	victoire_joueur:VRAI
	nb_allumettes:=ALLUMETTES_MAX;
	allumettes_retirees:=0;
	//fin du bloc d'initialisation

ECRIRE:"Bienvenue dans le jeu de nim. A son tour, chaque joueur doit retirer 1, 2 ou 3 allumettes. Le joueur qui retirera la derniere allumette perdra !"
ECRIRE:"Il reste ",nb_allumettes(21)," allumettes. C'est à votre tour. Combien d'allumettes retirez-vous ?"
LIRE allumettes_retirees(9)
ECRIRE:"Saisie incorrecte, votre nombre n'est pas compris entre 1 et 3. Combien d'allumettes retirez-vous ?"
LIRE allumettes_retirees(3)
nb_allumettes(21)<-nb_allumettes(21)-allumettes_retirees(3)
((nb_allumettes MOD 4=0)+2) ALORS
allumettes_retirees<-1
nb_allumettes(18)<-allumettes(18)-allumettes_retirees(1)
ECRIRE:"A mon tour. Je retire ",allumettes_retirees(1)," allumettes."
ECRIRE:"Il reste ",nb_allumettes(17)," allumettes. C'est à votre tour. Combien d'allumettes retirez-vous ?"
LIRE allumettes_retirees(3)
nb_allumettes(17)<-nb_allumettes(17)-allumettes_retirees(3)
((nb_allumettes MOD 4=0)+2) ALORS
allumettes_retirees<-1
nb_allumettes(14)<-allumettes(14)-allumettes_retirees(1)
ECRIRE:"A mon tour. Je retire ",allumettes_retirees(1)," allumettes."
ECRIRE:"Il reste ",nb_allumettes(13)," allumettes. C'est à votre tour. Combien d'allumettes retirez-vous ?"
LIRE allumettes_retirees(2)
nb_allumettes(13)<-nb_allumettes(13)-allumettes_retirees(2)
((nb_allumettes MOD 4=0)+3) ALORS
allumettes_retirees<-2
nb_allumettes(11)<-allumettes(11)-allumettes_retirees(2)
ECRIRE:"A mon tour. Je retire ",allumettes_retirees(2)," allumettes."
}


PROGRAM
	JEU_DE_NIM;

//BUT: Simuler le jeu des allumettes. Chaque joueur doit retirer à son tour 1,2 ou 3 allumettes sur un tas de 21. Le joueur qui retire la dernière allumette a perdu. Le jeu sera réalisé en textuel et permettra à un joueur d'affronter l'ordinateur.

//PRINCIPE: Une boucle répéter contient le tour du joueur et l'action du programme. Une boucle tantque permet de vérifier l'exactitude de la valeur du joueur. Une série de SI avec des conditions précises permet au programme de s'adapter en fonction du nombre d'allumettes restantes après le tour du joueur. On utilise un booléen pour déterminer qui est le vainqueur et le déclarer après la fin de la boucle.

//ENTREE: nombre d'allumettes retirées par un joueur

//SORTIES: nombre d'allumettes restantes, victoire d'un joueur.

USES
	crt;

CONST
	
	ALLUMETTES_MAX=21;
	ALLUMETTES_RETIREES_MAX=3;

VAR

	nb_allumettes,allumettes_retirees:INTEGER;
	victoire_joueur:BOOLEAN;

BEGIN

	//bloc d'initialisation
	nb_allumettes:=ALLUMETTES_MAX;
	allumettes_retirees:=0;
	//fin du bloc d'initialisation

	clrscr;
	writeln('Bienvenue dans le jeu de nim. A son tour, chaque joueur doit retirer 1,2 ou 3 allumette. Le joueur qui retirera la derniere allumette perdra !');
	REPEAT
		writeln('Il reste ',nb_allumettes,' allumettes. C est a votre tour. Combien d allumettes retirez-vous ?');
		readln(allumettes_retirees);
		WHILE (allumettes_retirees<=0)OR(allumettes_retirees>ALLUMETTES_RETIREES_MAX) DO
			begin
			writeln('Saisie incorrecte, votre nombre n est pas compris entre 1 et 3. Combien d allumettes retirez-vous ?');
			readln(allumettes_retirees);
			end;
		nb_allumettes:=nb_allumettes-allumettes_retirees;
		IF (nb_allumettes<=0) THEN
		begin
			victoire_joueur:=false;
		end;
		IF (nb_allumettes>0) THEN
		begin
			IF (nb_allumettes MOD 4=0) THEN
			begin
				allumettes_retirees:=3;
			end
			ELSE IF (nb_allumettes MOD 4=1) THEN
			begin
				allumettes_retirees:=1;
			end
			ELSE IF (nb_allumettes MOD 4=2) THEN
			begin
				allumettes_retirees:=1;
			end
			ELSE IF (nb_allumettes MOD 4=3) THEN
			begin
				allumettes_retirees:=2;
			end;
			nb_allumettes:=nb_allumettes-allumettes_retirees;
			writeln('A mon tour. Je retire ',allumettes_retirees,' allumettes.');
			IF (nb_allumettes<=0) THEN
			begin
				victoire_joueur:=true;
			end;
		end;
	UNTIL(nb_allumettes<=0);
	IF victoire_joueur THEN
		begin
		writeln('J ai retire la derniere allumette, vous avez gagne !');
		end
	ELSE
		begin
		writeln('Vous avez retire la derniere allumette, vous avez perdu.');
		end;
	readkey;
END.