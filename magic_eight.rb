require 'pry'
# this is the main hash, this is where all the magic eight ball answers come from
@array = [
	'It is certain',
	'It is decidedly so',
	'Without a doubt',
	'Yes, definitely',
	'You may rely on it',
	'As I see it, yes',
	'Most likely',
	'Outlook good',
	'Yes',
	'Signs point to yes',
	'Reply hazy, try again',
	'Ask again later',
	'Better not tell you now',
	'Cannot predict now',
	'Concentrate and ask again',
	'Don\'t count on it',
	'My reply is no',
	'My sources say no',
	'Outlook not so good',
	'Very doubtful',
]

# this is my main menu....it's where all the controls happen
def menu
	puts "Welcome to the Magic 8-Ball! Please type in your question and I will give you the TRUTH!"
	puts "Or, type 'Quit' to exit."
	user_input = gets.strip
	magic_logic(user_input)
end

# The is where the magic happens....oh!!!  (but really it's where the logic is run for my eight ball)
def magic_logic(user_input)
	if user_input.downcase == "quit"
		puts "Goodbye!"
	elsif user_input == "how much wood could a wood chuck chuck, if a wood chuck could chuck wood"
		puts "Congratulations, you asked the dumbest question known to man! Oh, and nobody likes you."
		puts "..............................................."
		menu
	else 
		puts @array.sample
		puts "-----------------------------------------------"
		menu
	end
end



def run_program
	menu
end

run_program