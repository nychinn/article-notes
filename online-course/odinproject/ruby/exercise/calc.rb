
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



# sailor_scouts = ['sailor moon', 'sailor mercury', 'sailor jupiter', 'sailor venus', 'sailor mars']
# puts sailor_scouts.sort

# alpha_sailor_scouts = Array.new
# sailor_scouts.length.times do |i|
# end
# puts alpha_sailor_scouts



# contents = [ ['Chapter 1: Numbers', 'page 1'], ['Chapter 2: Letters', 'page 72'], ['Chapter 3: Variables', 'page 118'] ]

# lineWidth = 50
# puts ('Table of Contents').center(lineWidth)

# contents.length.times do |i|
# 	puts (contents[i][0]).ljust(lineWidth/2) + (contents[i][1]).rjust(lineWidth/2)
# end



# def sayMoo numberOfMoos
# 	puts 'mooooo...' * numberOfMoos
# 	'yellow submarine'
# end

# x = sayMoo 3
# puts x



# def doubleThis num
# 	numTimes2 = num*2
# 	puts num.to_s+' doubled is '+numTimes2.to_s
# end

# doubleThis 44



# def ask question
# 	goodAnswer = false
# 	while (not goodAnswer)
# 		puts question
# 		reply = gets.chomp.downcase

# 		if (reply == 'yes' or reply == 'no')
# 			goodAnswer = true
# 			if reply == 'yes'
# 				answer = true
# 			else
# 				answer = false
# 			end
# 		else
# 			puts 'Please answer "yes" or "no".'
# 		end
# 	end

# 	answer # this is what we return
# end

# puts 'Hello, and thank you for ...'
# puts

# ask 'Do you like eating tacos?'
# ask 'Do you like eating burritos?'
# wetsBed = ask 'Do you wet the bed?'
# ask 'Do you like eating chimichangas?'
# ask 'Do you like eating sopapillas?'
# ask 'Do you like eating tamales?'
# puts 'Just a few more questions'
# ask 'Do you like drinking horchata?'
# ask 'Do you like eating flautas?'

# puts
# puts 'DEBRIEFING'
# puts 'Thank you for ...'
# puts
# puts wetsBed



def englishNumber number
	if number < 0 # no negative numbers
		return 'Please enter a number that isn\'t negative'
	end
	if number == 0
		return 'zero'
	end

	# no more special cases! no more returns

	numString = ''

	onesPlace = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tensPlace = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	left = number
	write = left/1000
	left = left - write*1000

	puts write

	if write > 0
		thousands = englishNumber write
		numString = numString + thousands + ' thousand'

		if left > 0
			numString = numString = ' '
		end
	end

	# 'left' is how much of the number still have left to write
	# 'write' is the part we are writing out right now

	# left = number
	write = left/100 # how many hundreds left to write
	left = left - write*100 #subtract those hundreds

	if write > 0
		# here's a trick
		hundreds = englishNumber write
		numString = numString + hundreds + ' hundred'

		# this is recursion
		# told the method to call itself, but with 'write' instead of the 'number'
		# 'write' is atm the number of hundreds we have to write out
		# after we add 'hundreds' to 'numString' we add the string ' hundred' after it
		# eg) if we originally called 'englishNumber' with 1999, 'write' would be 19, 'left' would be 99
		# we have 'englishNumber' write out the 'nineteen' for us
		# then write out ' hundred', then the rest of 'englishNumber' writes out 'ninety-nine'

		if left > 0
			# so we don't write 'two hundredfifty-one'
			numString = numString + ' '
		end
	end	

	write = left/10 # how many tens are left to write out?
	left = left - write*10 # subtract those tens

	if write > 0
		if ((write == 1) and (left > 0))
			# since we can't write twenty two instead of 'twelve'
			# we have to make a special exception for these
			numString = numString + teenagers[left-1]
			# the '-1' is because teenagers[3] is 'fourteen', not 'thirteen'

			# since we took care of the digit in the ones play already
			# we have nothing left to write
			left = 0;
		else
			numString = numString + tensPlace[write-1]
			# the '-1' is because tensPlace[3] is 'forty', not 'thirty'
		end

		if left > 0
			# so we don't write 'sixtyfour'...
			numString = numString + '-'
		end
	end

	write = left # how many ones left
	left = 0 # subtract the ones

	if write > 0
		numString = numString + onesPlace[write-1]
		# the '-1' is because onesPlace[3] is 'four', not 'three'
	end

	#return numString
	numString


end

puts englishNumber(2234)










