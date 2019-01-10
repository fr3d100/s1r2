def signup
	puts ""
	puts "Bonjour chez nouvel utilisateur !"
	puts "Tu vas devoir saisir un mot de passe qui te permettra de te connecter à notre super appli"
	puts "Attention ne l'oublie pas, si tu veux te connecter"
	puts ""
	print "> Défini ton mot de passe : "
	password = gets.chomp
	puts "Merci ton mot de passe a bien été enregisté"
	return password
end

def login(password)
	print "> Quel est le mot de passe ?"
	attempt = gets.chomp

	while(attempt != password)
		puts "Oh oh, il semblerait que le mot de passe ne soit pas le bon"
		puts "Retente ta chance !"
		print ">"
		attempt = gets.chomp
	end

end

def welcome_screen
	puts "Bienvenu dans ta zone secrète !"
	puts ""
	puts "Tu te rappelles de cette photo de toi quand tu bloquais au pré-parcours ?"
	puts ""
	puts "(ノಠ益ಠ)ノ彡┻━┻"
	puts ""
	puts "ATTENTION ! ELLE NE DOIT JAMAIS TOMBER DANS LES MAINS DE CHARLES OU FELIX !"

end

def perform
	password = signup
	login(password)
	welcome_screen
end

perform