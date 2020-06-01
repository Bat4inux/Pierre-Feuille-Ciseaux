#!/bin/bash

#Bat4inux

#DATE=`date`
clear

echo ""
echo -e "\033[32m"
echo -e "             ____  _                           "
echo -e "            / __ \(_)__  _____________         "
echo -e "           / /_/ / / _ \/ ___/ ___/ _ \        "
echo -e "          / ____/ /  __/ /  / /  /  __/        "
echo -e "         /_/   /_/\___/_/  /_/   \___/         "
echo -e "                                               "
sleep 1
echo -e "             ______           _ ____           "
echo -e "            / ____/__  __  __(_) / /__         "
echo -e "           / /_  / _ \/ / / / / / / _ \        "
echo -e "          / __/ /  __/ /_/ / / / /  __/        "
echo -e "         /_/    \___/\__,_/_/_/_/\___/         "
sleep 1
echo -e "            _______                            "
echo -e "           / ____(_)_______  ____ ___  ___  __ "
echo -e "          / /   / / ___/ _ \/ __ '/ / / / |/_/ "
echo -e "         / /___/ (__  )  __/ /_/ / /_/ />  <   "
echo -e "         \____/_/____/\___/\__,_/\__,_/_/|_|   "
echo -e ""
echo -e "\033[0m"
sleep 3
clear


echo -e ""
echo -e "\033[34m"
echo -e "  _    __          ____           ___             __                      "
echo -e " | |  / /____     / __ \_________/ (_)___  ____ _/ /____  __  _______     "
echo -e " | | / / ___/    / / / / ___/ __  / / __ \/ __ '/ __/ _ \/ / / / ___/     "
echo -e " | |/ (__  )    / /_/ / /  / /_/ / / / / / /_/ / /_/  __/ /_/ / /         "
echo -e " |___/____/     \____/_/   \__,_/_/_/ /_/\__,_/\__/\___/\__,_/_/          "
sleep 1
echo -e "                                                                          "
echo -e "                         +--------------+                                 "
echo -e "                         |.------------.|                                 "
echo -e "                         ||            ||                                 "
echo -e "                         ||            ||                                 "
echo -e "                         ||            ||                                 "  
echo -e "                         ||            ||                                 "
echo -e "                         |+------------+|                                 "
echo -e "                         +-..--------..-+                                 "
echo -e "                         .--------------.                                 "
echo -e "                        / /============\ \                                "
echo -e "                       / /==============\ \                               "
echo -e "                      /____________________\                              "
echo -e "                      \____________________/                              "
sleep 3
echo ""
echo -e "\033[0m"	
clear

echo -e "\033[33m	Bonjour, vous allez jouer contre l'ordinateur."
echo ""
read -p "	Comment vous vous appelez ? " NomJ


R=1 #Rester dans le jeu
while [ $R -eq 1 ]
do


	R1=1
	while [ $R1 -eq 1 ]
	do
		read -p "	$NomJ choisissez un nombre de partie => " NbreParties
		
		if [[ $NbreParties =~ [0-9] ]]; then
			R1=0
		else
			echo -e "\033[31m	Mauvais choix, tapez un nombre !.\033[33m"
			sleep 2
		fi
	done
	
	
	i=0
	for (( i=0 ; i<=$NbreParties-1 ; i++ ))
	do
		
		
		a=1 # Choix du joueur.
		while [ $a -eq 1 ]
		do  
			echo -e "\033[33m"
			echo -e "	$NomJ choisissez parmi la Pierre => P, la feuille => F ou le ciseaux => C."
			echo ""
			read -p "		Taper soit P, F ou C => " iChoix
			echo -e "\033[0m"
			case "$iChoix" in
				P|F|C ) ChoixJ=$iChoix
						a=0
				;;
				* ) echo -e "\033[31m		Mauvais choix.\033[0m"
					sleep 1
					clear
					a=1
				;;
			esac
		done
		
		ChoixPC=$(( $RANDOM % 3 + 1 )) #Choix du PC.
		case "$ChoixPC" in
			1 ) choixPCL='P'
			;;
			2 ) choixPCL='F'
			;;
			3 ) choixPCL='C'
			;;
			* ) echo -e "\033[31m		Erreur du programme.\033[0m"
		esac
		
		echo -e "\033[35m		$NomJ a choisi(e) $ChoixJ\033[0m" # Affiche choix joueur.
		echo -e "\033[36m		Le PC a choisi $choixPCL\033[0m" # Affiche choix PC.
		echo ""
	
		if [ $ChoixJ = 'P' ] && [ $choixPCL = 'P' ];then
			echo -e "		Il y a égalité !" 
		elif [ $ChoixJ = 'P' ] && [ $choixPCL = 'F' ];then
			echo -e "\033[31m		$NomJ a perdu(e), le PC a gagné\033[0m" 
		elif [ $ChoixJ = 'P' ] && [ $choixPCL = 'C' ];then
			echo -e "\033[32m		$NomJ a gagné(e), le PC a perdu\033[0m" 
		#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		elif [ $ChoixJ = 'F' ] && [ $choixPCL = 'P' ];then
			echo -e "\033[32m		$NomJ a gagné(e), le PC a perdu\033[0m" 
		elif [ $ChoixJ = 'F' ] && [ $choixPCL = 'F' ];then
			echo -e "		Il y a égalité !" 
		elif [ $ChoixJ = 'F' ] && [ $choixPCL = 'C' ];then
			echo -e "\033[31m		$NomJ a perdu(e), le PC a gagné\033[0m" 
		#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
		elif [ $ChoixJ = 'C' ] && [ $choixPCL = 'P' ];then
			echo -e "\033[31m		$NomJ a perdu(e), le PC a gagné\033[0m" 
		elif [ $ChoixJ = 'C' ] && [ $choixPCL = 'F' ];then
			echo -e "\033[32m		$NomJ a gagné(e), le PC a perdu\033[0m" 
		elif [ $ChoixJ = 'C' ] && [ $choixPCL = 'C' ];then
			echo -e "		Il y a égalité !"
		fi
	
		sleep 5
		clear
	done
	
	V=1
	while [ $V -eq 1 ]
	do
		read -p "		Rejour [ O/N ] >>>  " R #Y COULEUR ORANGE
		case "$R" in
			O | o ) V=0
					R=1
					clear
			;;
			N | n ) V=0
					R=0
					echo "		Au revoir ! Et merci d'avoir jouer !! "
					sleep 3
					clear
			;;
			* ) echo -e "\033[31m		Mauvais choix..\033[0m"
				sleep 1
			;;
		esac
	done
	
done

exit
	
	
	
	
	
	
	
