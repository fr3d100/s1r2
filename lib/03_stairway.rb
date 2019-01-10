def die_roll
	die_value = rand(1..6)
	puts "Tu as fais un #{die_value}"
	return die_value
end

def game(value)

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
	else 
		puts "Hum, ton doit est surement pipé !"
		move = 0
	end
	return move
end

def perform
	puts "Bienvenue dans cette nouvelles partie !"
	score=0
	while (score < 10)
		score = 0
		score += game(die_roll)
		puts score
	end
	puts "Bravo, tu as gagné le jeu de loi !"
end

perform