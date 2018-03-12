
# puts "Hours in one year: #{(24 * 356)}"
# puts "Minutes in a decade: #{ ((60 * 24) * 356 * 10) }"
# puts "Seconds old: #{ ((((28 * 60) * 60) * 24) * 365) } +"
# puts "If I am 1298 million seconds old, how old am I? #{ (((1298000000 / 365) / 24) / 60) / 60 }"

# puts 'blink ' * 4

# puts '15'.to_f
# puts '99.999'.to_f
# puts '99.999'.to_i
# puts ''
# puts '5 is my favorite number!'.to_i
# puts 'Who asked you about 5 or whatever?'.to_i
# puts 'Your momma did.'.to_f
# puts ''
# puts 'stringy'.to_s
# puts 3.to_i

# puts 'Hello there, and what\'s your name?'
# name = gets.chomp
# puts 'Your name is ' + name + '? What a lovely name!'
# puts 'Pleased to meet you, ' + name + '. :)'

# puts ''

# puts 'What\'s your first name?'
# first_name = gets.chomp
# puts 'What\'s your middle name?'
# middle_name = gets.chomp
# puts 'What\'s your last name?'
# last_name = gets.chomp
# puts 'Good morning, ' + first_name + ' ' + middle_name + ' ' + last_name + '!'

# puts 'What\'s your favourite number?'
# fave_number = gets.chomp.to_i
# new_number = fave_number+=1
# puts 'I much prefer the number ' + new_number.to_s

# puts 'hello '.+ 'world'
# puts (10.*9).+ 9

# lineWidth = 50
# puts(                'Old Mother Hubbard'.center(lineWidth))
# puts(               'Sat in her cupboard'.center(lineWidth))
# puts(         'Eating her curds an whey,'.center(lineWidth))
# puts(          'When along came a spider'.center(lineWidth))
# puts(         'Which sat down beside her'.center(lineWidth))
# puts('And scared her poor shoe dog away.'.center(lineWidth))



# puts 'What do you want?'
# wanted_thing = gets.chomp.upcase
# puts 'WHADDAYA MEAN, ' + wanted_thing + '?!?'



# lineWidth = 50
# puts ('Table of Contents').center(lineWidth)
# puts ('Chapter 1: Numbers').ljust(lineWidth/2) + ('page 1').rjust(lineWidth/2)
# puts ('Chapter 2: Letters').ljust(lineWidth/2) + ('page 72').rjust(lineWidth/2)
# puts ('Chapter 3: Variables').ljust(lineWidth/2) + ('page 118').rjust(lineWidth/2)



# puts(Math::PI)
# puts(Math::E)
# puts(Math.cos(Math::PI/3))
# puts(Math.tan(Math::PI/4))
# puts(Math.log(Math::E**2))
# puts((1 + Math.sqrt(5))/2)



# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'
# if name == 'Chris'
# 	puts 'What a lovely name!'
# end



# puts 'I am a fortune-teller. Tell me your name:'
# name = gets.chomp
# if name == 'Chris'
# 	puts 'I see great things in your future'
# else
# 	puts 'Your future is... Oh my! Look at the time!'
# 	puts 'I really have to go, sorry!'
# end



# command = ''

# while command != 'bye'
# 	command = gets.chomp
# 	puts command
# end

# puts 'Come again soon!'



# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name + '.'
# if (name == 'Chris' or name == 'Katy')
# 	puts 'What a lovely name!'
# end



# iAmChris = true
# iAmPurple = false
# iLikeFood = true
# iEatRocks = false

# puts (iAmChris and iLikeFood)
# puts (iLikeFood and iEatRocks)
# puts (iAmPurple and iLikeFood)



# DEAF GRANDMA PROGRAM
# speak = '';
# bye = ''

# while bye != 'BYEBYEBYE'
# 	speak = gets.chomp
# 	if speak != speak.upcase
# 		puts 'HUH?! SPEAK UP, SONNY!'
# 	else 
# 		random_year = 1930 + rand(20)
# 		puts 'NO, NOT SINCE ' + random_year.to_s

# 		if speak != 'BYE'
# 			bye = ''
# 		elsif speak == 'BYE'
# 			bye = bye + 'BYE'
# 		end
# 	end
# end

# puts 'BYE HONEY!'



# LEAP YEAR PROGRAM
# puts 'Please enter a start year:'
# starting_year = gets.chomp.to_i
# puts 'Please enter an end year:'
# ending_year = gets.chomp.to_i

# difference = (ending_year - starting_year) + 1

# difference.times do |i|
# 	year = starting_year + i
# 	if year%4 == 0 and (year%100 != 0 or year%400 == 0)
# 		puts year
# 	end
# end



# names = ['Ada', 'Belle', 'Chris']

# puts names
# puts names[0]
# puts names[1]
# puts names[2]
# puts names[3]



# languages = ['English', 'German', 'Ruby']

# languages.each do |lang|
# 	puts 'I love ' + lang + '!'
# 	puts 'Don\'t you?'
# end

# puts 'And let\'s hear it for C++!'
# puts '...'



# 3.times do
# 	puts 'Hip-Hip-Hooray!'
# end

# foods = ['artichoke', 'brioche', 'caramel']

# puts foods
# puts
# puts foods.to_s
# puts
# puts foods.join(', ')
# puts
# puts foods.join(' :) ') + ' 8)'

# 200.times do
# 	puts []
# end



# favourites = []
# favourites.push 'raindrops on roses'
# favourites.push 'whiskey on kittens'

# puts favourites[0]
# puts favourites.last
# puts favourites.length

# puts favourites.pop
# puts favourites
# puts favourites.length



sailor_scouts = ['sailor moon', 'sailor mercury', 'sailor jupiter', 'sailor venus', 'sailor mars']
# puts sailor_scouts.sort

alphabetical_sailor_scouts = Array.new

sailor_scouts 























