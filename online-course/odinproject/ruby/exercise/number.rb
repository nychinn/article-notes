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

	#trillions
	write = left/1000000000000
	left = left - write*1000000000000

	if write > 0
		trillions = englishNumber write
		numString = numString + trillions + ' trillion'

		if left > 0
			numString = numString + ' '
		end
	end

	#billions
	write = left/1000000000
	left = left - write*1000000000

	if write > 0
		billions = englishNumber write
		numString = numString + billions + ' billion'

		if left > 0
			numString = numString + ' '
		end
	end

	#millions
	write = left/1000000
	left = left - write*1000000

	if write > 0
		millions = englishNumber write
		numString = numString + millions + ' million'

		if left > 0
			numString = numString + ' '
		end
	end


	write = left/1000
	left = left - write*1000

	if write > 0
		thousands = englishNumber write
		numString = numString + thousands + ' thousand'

		if left > 0
			numString = numString + ' '
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
		numString = numString + hundreds + ' hundred and'

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

99.downto(1) do |i|
	puts englishNumber(i+1)+ ' bottles of beer on the wall, '+englishNumber(i+1)+' bottles of beer, put one down and pass it around, '+englishNumber(i)+' bottles of beer on the wall'
end











