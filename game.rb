puts("Hello! What is your name?")

name = gets.chomp

puts("Welcome to the game #{name}!")

number = rand(1..10)

puts("Please, guess number between 1 and 10. You have 3 attempts!")

winner = false

while winner == false

	guess = gets.to_i

	if guess > number then

		puts("Sorry, wrong. You have 2 more attempts!")

	elsif guess < number then

		puts("Sorry, wrong. You have still one try! Concentrate!")

	else

		puts("Congratulations #{name}. You win!")

		winner = true
	end

end