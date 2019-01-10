# méthode pour la fabrication de la demi pyramide
def half_pyramid
	#Demande à l'utilisateur le nb d'étages désirés
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">" 
	floors = gets.chomp.to_i
	puts "Voici ta half pyramide :"

	#Définition des variables
	p = Array.new(floors)
	i = 0
	#varibable pour les dieses
	f = 1
	#variable pour les blanks
	b = 0
	#variable pour la symétrie
	s = 0

	#Boucle des étages
	while i < floors do

		#Boucle pour les blancs
		while b < floors - f
			p[i] = p[i].to_s + " "
			b += 1
			s = b
		end

		#Boucle pour les dieses
		k = 0
		while k < f
			p[i] = p[i].to_s + "#"
			k += 1
		end
		f += 1
		# On remets la variable des 'blanks' à 0
		b = 0

		# On affiche l'étage
		puts p[i]
		
		i += 1
	end

end


def full_pyramid
	#Demande à l'utilisateur
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">" 
	floors = gets.chomp.to_i

	puts "Voici ta full pyramide :"
	#Définition des variables
	p = Array.new(floors)
	# variable pqui compte les étages
	i = 1
	#varibable pour les dieses
	f = 1
	#variable pour les blanks
	b = 0

	#Boucle des étages
	while i - 1 < floors do

		#Boucle pour les blancs
		# Le nombre de blanc à gauche décrémente de 1 à chaque étage (d'où le -i)
		while b < floors - i
			p[i] = p[i].to_s + " "
			b += 1
		end

		#Boucle pour les dieses
		k = 0
		while k < f
			p[i] = p[i].to_s + "#"
			k += 1
		end
		#la différence avec la half pyramide est qu'on ajoute 2# de plus à entre chaque étage
		f += 2
		# On remets la variable des 'blanks' à 0
		b = 0

		# On affiche l'étage
		puts p[i]
		
		i += 1
	end

end

def wtf_pyramid
	#Demande à l'utilisateur
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">" 
	floors = gets.chomp.to_i

	if floors.odd? #on test si le nombre saisi est impair
		puts "Voici ta WTF pyramide :"
		#Définition des variables
		p = Array.new(floors)
		# variable qui compte les étages
		i = 1
		#varibable pour les dieses
		f = 1
		#variable pour les blanks
		b = 0

		# 1) BOUCLE Partie supérieure
		#Boucle des étages
			while i - 1 < (floors+1)/2  do #la partie supérieur ne va que jusqu'à la moitié du nombre d'étages demandés

				#Boucle pour les blancs
				# Le nombre de blanc à gauche décrémente de 1 à chaque étage (d'où le -i)
				while b < floors - i
					p[i] = p[i].to_s + " "
					b += 1
				end

				#Boucle pour les dieses
				k = 0
				while k < f
					p[i] = p[i].to_s + "#"
					k += 1
				end
				#la différence avec la half pyramide est qu'on ajoute 2# de plus à entre chaque étage
				f += 2
				b = 0

				# On affiche l'étage
				puts p[i]
				i += 1
			end

		#2) BOUCLE Partie inférieure
		# On ne va pas recalculer des étage mais simplement faire réafficher les étage précédent dans l'ordre décroissant
			# On annule la dernière incrémentation parasite de i lors de la boucle du dernier étage
			i -= 1
			while i-1 > 0  do
				# On affiche l'étage symétrique
				i-= 1
				puts p[i]
			end

	# Si le nombre demandé est pair
	else	
		p "Tu te moques du monde là ! Donne mois plutôt un chiffre impair ! "
	end
end



#half_pyramid
#full_pyramid
wtf_pyramid