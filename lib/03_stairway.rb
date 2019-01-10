
# 1 -  Méthode "die_roll" qui simule le lancement du dé
	# OUTPUT : la valeur affichée par le dé
def die_roll
	die_value = rand(1..6)
	# On dit à l'utilisateur la valeur du dé
	puts "Tu as fais un #{die_value}"
	return die_value
end

# 2 - Méthode "game" qui calcule le nombre de marche à monter/descendre en fonction de la valeur du dé
	# INPUT : la valeur affichée par le dé
	# OUTPUT : le nombre de marche à monter/ descendre

def game(value)

	# Disjonction de tous les cas possible
	if value == 1
		move = -1
		puts "Oups, tu recule d'une case"
	elsif value == 2
		puts "Hum, rien ne se passe"
		move = 0
	elsif value == 3
		puts "Hum, rien ne se passe"
		move = 0
	elsif value == 4
		puts "Hum, rien ne se passe"
		move = 0
	elsif value == 5
		move = +1
		puts "Bravo, tu avance d'une case"
	elsif value == 6
		move = +1
		puts "Bravo, tu avance d'une case"

	# Gestion du cas d'erreur
	else 
		puts "Hum, ton doit est surement pipé !"
		move = 0
	end
	return move
end

# 3 - Méthode "play" qui simule une partie complète jusqu'à la victoire du joueur
	# OUTPUT : le nombre de coût necessaire pour gagner

def play
	puts "Bienvenue dans cette nouvelles partie !"
	score = 0
	new_score = 0
	nb_play = 0
	while (score < 10)
		new_score = game(die_roll)
		# Gestion du cas pour ne pas descendre en dessous de la marche 0
		if score + new_score > -1
			score += new_score
		end
		nb_play += 1
		puts "> Tu es sur la marche #{score}"
	end
	# On informe le joueur qu'il a gagné
	puts "----------"
	puts "Bravo, tu as gagné le jeu de loi !"
	puts "----------"

	return nb_play
end

#4 - Méthode "average_finish_time" qui simule X parties et calcul la moyenne des coûts necessaires pour gagner une partie après X parties complètes
	# INPUT : le nombre de parties à simuler
	# OUTPUT : la moyenne de coûts necessaire pour gagner une partie
def average_finish_time(time)
	i = 0
	av_array = Array.new(time)
	while(i<time)
		av_array[i]=play
		i+= 1
	end

	# Calcul de la moyenne
	total = 0.0
	av_array.each do |a|
		total += a
	end

	average = total/av_array.size

	# Affichage des métriques
	puts "----------"
	puts "RESULTATS"
	puts "----------"
	puts "Voici la liste du nombre de coûts necessaires pour gagner ces #{time} parties :"
	print av_array
	puts ""	
	puts "----------"
	puts "Moyenne"
	puts "----------"
	puts "Il a donc fallu en moyenne #{average} coûts pour gagner !"

end

# La méthode perform qui va appeler la méthode average_finish_time (qui appelle les autres méthodes en cascade)
def perform
	 average_finish_time(101)
end

perform