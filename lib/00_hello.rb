# Gestion de la demande du prénom de l'utilisateur
def ask_first_name
	p "Quel est ton nom ?"
	first_name = gets.chomp
	return first_name
end

# Gestion de l'affichage de la réponse
def say_hello (firstname)
	p "Ah, bonjour #{firstname} !" 
end

# Définition de la méthode perfom
def perform
	firstname = ask_first_name
	say_hello(firstname)
end

# Execution du perform
perform


