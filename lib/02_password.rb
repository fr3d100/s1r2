# Méthode de création du compte utilisateur
	# OUTPUT : le mdp défini par l'utilisateur qui va être stocké
def signup
	puts "-----------------------------------"
	puts "Bonjour chez nouvel utilisateur !"
	puts "-----------------------------------"
	puts "Tu vas devoir saisir un mot de passe qui te permettra de te connecter à ta zone secrète"
	puts "Attention ne l'oublie pas, si tu veux te connecter"
	puts ""
	print "> Défini ton mot de passe : "
	password = gets.chomp
	puts "Merci ton mot de passe a bien été enregisté"
	return password
end

# Méthode d'authentification de l'utilisateur
	# INPUT : le mot de passe à saisir pour accéder à la zone secrète
def login(password)
	puts "-----------------------------------"
	puts "! ATTENTION - ZONE PROTEGEE !"
	puts "-----------------------------------"
	print "> Quel est le mot de passe ?"
	attempt = gets.chomp

	# Boucle qui tourne tant que l'utilisateur n'a pas saisi le bon mot de passe
	while(attempt != password)
		puts "Oh oh, il semblerait que le mot de passe ne soit pas le bon"
		puts "Retente ta chance !"
		print ">"
		attempt = gets.chomp
	end

end

# Méthode d'affichage de la zone secrète
def welcome_screen
	puts "----------------------------------------------------------------------------"
	puts "                     Bienvenue dans ta zone secrète !"
	puts "----------------------------------------------------------------------------"
	puts ""
	puts " Tu te rappelles de cette photo de toi quand tu bloquais au pré-parcours ?"
	puts ""
	puts "                              (ノಠ益ಠ)ノ彡┻━┻"
	puts ""
	puts " ATTENTION! ELLE NE DOIT JAMAIS TOMBER DANS LES MAINS DE CHARLES OU DE FELIX !"
	puts ""
	puts "----------------------------------------------------------------------------"
end

# La méthode perform qui enchaine les méthode de création de dp, d'authentification et d'affichage de la zone secrète
def perform
	password = signup
	login(password)
	welcome_screen
end

perform