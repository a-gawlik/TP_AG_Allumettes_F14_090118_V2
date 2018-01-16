{
	
ALGORITHME:JEU_DES_ALLUMETTES_DEUX_JOUEURS

//BUT: Simuler le jeu des allumettes. Chaque joueur doit retirer à son tour 1,2 ou 3 allumettes sur un tas de 21. Le joueur qui retire la dernière allumette a perdu. Le jeu sera réalisé en textuel et permettra à deux joueurs de s'affronter.

//PRINCIPE: On utilise une boucle répéter pour effectuer en boucle le tour d'un joueur. Une variable permet d'annoncer quel joueur doit effectuer son tour. La boucle tantque permet de bloquer les réponses incorrectes, soit celles qui ne sont pas compris dans l'intervalle. L'utilisation de constanes permet de modifier le nombre d'allumettes au début d'une partie ou le nombre d'allumettes max tirées.

//ENTREE: nombre d'allumettes retirées par un joueur

//SORTIES: nombre d'allumettes restantes, victoire d'un joueur.


CONST:

	ALLUMETTES_MAX<-21:ENTIER
	ALLUMETTES_RETIREES_MAX<-3:ENTIER

VAR:

	nb_allumettes,numero_joueur,allumettes_retirees:ENTIER


DEBUT:

	// Bloc d'initialisation des variables

	nb_allumettes<-ALLUMETTES_MAX
	allumettes_retirees<-0
	numero_joueur<-1

	// Fin du bloc d'initialisation des variables

	ECRIRE:"Bienvenue dans le jeu de nim. A son tour, chaque joueur doit retirer 1, 2 ou 3 allumettes. Le joueur qui retirera la dernière allumette perdra !"
	REPETER
		ECRIRE:"Il reste",nb_allumettes," allumettes. C'est au tour du joueur ",numero_joueur". Combien d'alumettes retirez-vous ?"
		LIRE allumettes_retirees
		TANTQUE (allumettes_retirees<=0) OU (allumettes_retirees>ALLUMETTES_RETIREES_MAX)
			ECRIRE:"Saisie incorrecte, votre nombre n'est pas compris entre 1 et 3. Combien d'allumettes retirez-vous ?"
			LIRE allumettes_retirees
		FINTANTQUE
		nb_allumettes<-nb_allumettes-allumettes_retirees
		SI nb_allumettes>0 ALORS 		
			SI numero_joueur=1 ALORS 	//condition SI permettant de donner à la variable numero_joueur la valeur 1 ou 2 et ainsi déterminer quel joueur est en train de jouer
				numero_joueur<- numero_joueur+1
				SINON
				numero_joueur<- numero_joueur-1
			FINSI
		FINSI
	JUSQUA (nb_allumettes<=0) //la boucle s'arrête lorsqu'il ne reste plus d'allumette.
	ECRIRE:"Le joueur ",numero_joueur," a retiré la dernière allumette, son adversaire remporte la partie !"
FIN

---

Jeu d'essai :

	// Bloc d'initialisation des variables

	nb_allumettes<-ALLUMETTES_MAX
	allumettes_retirees<-0
	numero_joueur<-1

	// Fin du bloc d'initialisation des variables

ECRIRE:"Bienvenue dans le jeu de nim. A son tour, chaque joueur doit retirer 1, 2 ou 3 allumettes. Le joueur qui retirera la dernière allumette perdra !"
ECRIRE:"Il reste",nb_allumettes,(21)" allumettes. C'est au tour du joueur ",numero_joueur (1)". Combien d'alumettes retirez-vous ?"
LIRE allumettes_retirees(4)
ECRIRE:"Saisie incorrecte, votre nombre n'est pas compris entre 1 et 3. Combien d'allumettes retirez-vous ?"
LIRE allumettes_retirees(3)
nb_allumettes(21)<-nb_allumettes(21)-allumettes_retirees(3)
	numero_joueur(1)<- numero_joueur(1)+1
ECRIRE:"Il reste",nb_allumettes,(18)" allumettes. C'est au tour du joueur ",numero_joueur (2)". Combien d'alumettes retirez-vous ?"
LIRE allumettes_retirees(3)
nb_allumettes(18)<-nb_allumettes(18)-allumettes_retirees(3)
	numero_joueur(2)<- numero_joueur(2)-1
ECRIRE:"Il reste",nb_allumettes,(15)" allumettes. C'est au tour du joueur ",numero_joueur (1)". Combien d'alumettes retirez-vous ?"
LIRE allumettes_retirees(2)
nb_allumettes(15)<-nb_allumettes(15)-allumettes_retirees(2)
	numero_joueur(1)<- numero_joueur(1)+1
ECRIRE:"Il reste",nb_allumettes,(13)" allumettes. C'est au tour du joueur ",numero_joueur (2)". Combien d'alumettes retirez-vous ?"
LIRE allumettes_retirees(3)
nb_allumettes(13)<-nb_allumettes(13)-allumettes_retirees(3)
	numero_joueur(2)<- numero_joueur(2)-1
ECRIRE:"Il reste",nb_allumettes,(10)" allumettes. C'est au tour du joueur ",numero_joueur (1)". Combien d'alumettes retirez-vous ?"
LIRE allumettes_retirees(3)
nb_allumettes(10)<-nb_allumettes(10)-allumettes_retirees(3)
	numero_joueur(1)<- numero_joueur(1)+1
ECRIRE:"Il reste",nb_allumettes,(7)" allumettes. C'est au tour du joueur ",numero_joueur (2)". Combien d'alumettes retirez-vous ?"
LIRE allumettes_retirees(2)
nb_allumettes(7)<-nb_allumettes(7)-allumettes_retirees(2)
	numero_joueur(2)<- numero_joueur(2)-1
ECRIRE:"Il reste",nb_allumettes,(5)" allumettes. C'est au tour du joueur ",numero_joueur (1)". Combien d'alumettes retirez-vous ?"
LIRE allumettes_retirees(3)
nb_allumettes(5)<-nb_allumettes(5)-allumettes_retirees(3)
	numero_joueur(1)<- numero_joueur(1)+1
ECRIRE:"Il reste",nb_allumettes,(2)" allumettes. C'est au tour du joueur ",numero_joueur (2)". Combien d'alumettes retirez-vous ?"
LIRE allumettes_retirees(1)
nb_allumettes(2)<-nb_allumettes(2)-allumettes_retirees(1)
	numero_joueur(2)<- numero_joueur(2)-1
ECRIRE:"Il reste",nb_allumettes,(1)" allumettes. C'est au tour du joueur ",numero_joueur (1)". Combien d'alumettes retirez-vous ?"
LIRE allumettes_retirees(1)
nb_allumettes(1)<-nb_allumettes(1)-allumettes_retirees(1)
	ECRIRE:"Le joueur ",numero_joueur(1)," a retiré la dernière allumette, son adversaire remporte la partie !"


}


PROGRAM
	JEU_DE_NIM;

//BUT: Simuler le jeu des allumettes. Chaque joueur doit retirer à son tour 1,2 ou 3 allumettes sur un tas de 21. Le joueur qui retire la dernière allumette a perdu. Le jeu sera réalisé en textuel et permettra à deux joueurs de s'affronter.

//PRINCIPE: On utilise une boucle répéter pour effectuer en boucle le tour d'un joueur. Une variable permet d'annoncer quel joueur doit effectuer son tour. La boucle tantque permet de bloquer les réponses incorrectes, soit celles qui ne sont pas compris dans l'intervalle. L'utilisation de constanes permet de modifier le nombre d'allumettes au début d'une partie ou le nombre d'allumettes max tirées.

//ENTREE: nombre d'allumettes retirées par un joueur

//SORTIES: nombre d'allumettes restantes, victoire d'un joueur.

USES
	crt;

CONST
	
	ALLUMETTES_MAX=21;
	ALLUMETTES_RETIREES_MAX=3;

VAR

	nb_allumettes,numero_joueur,allumettes_retirees:INTEGER;

BEGIN

	//bloc d'initialisation
	nb_allumettes:=ALLUMETTES_MAX;
	allumettes_retirees:=0;
	numero_joueur:=1;
	//fin du bloc d'initialisation

	clrscr;
	writeln('Bienvenue dans le jeu de nim. A son tour, chaque joueur doit en retirer 1,2 ou 3. Le joueur qui retirera la derniere allumette perdra !');
	REPEAT
		writeln('Il reste ',nb_allumettes,' allumettes. C est au tour du joueur ',numero_joueur,'. Combien d allumettes retirez-vous ?');
		readln(allumettes_retirees);
		WHILE (allumettes_retirees<=0)OR(allumettes_retirees>ALLUMETTES_RETIREES_MAX) DO
			begin
			writeln('Saisie incorrecte, votre nombre n est pas compris entre 1 et 3. Combien d allumettes retirez-vous ?');
			readln(allumettes_retirees);
			end;
		nb_allumettes:=nb_allumettes-allumettes_retirees;
		IF (nb_allumettes>0) THEN
			begin
				IF (numero_joueur=1) THEN
				numero_joueur:=numero_joueur+1
				ELSE
				numero_joueur:=numero_joueur-1;
			end;
	UNTIL(nb_allumettes<=0);
	writeln('Le joueur ',numero_joueur,' a retire la derniere allumette ! Son adversaire remporte la partie !');
	readkey;
END.