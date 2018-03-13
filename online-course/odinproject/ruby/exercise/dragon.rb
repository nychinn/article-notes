class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 # he's full
		@stuff_in_intestine = 0 # he doesn't need to go

		puts @name + ' is born.'
	end

	def feed
		puts 'You feed ' + @name + '.'
		@stuff_in_belly = 10
		passage_of_time
	end

	def walk
		puts 'You walk ' + @name + '.'
		@stuff_in_intestine = 0
		passage_of_time
	end

	def put_to_bed
		puts 'You put ' + @name + ' to bed.'
		@asleep = true

		3.times do
			if @asleep
				passage_of_time
			end

			if @asleep
				puts @name + ' snores, filling the room with smoke.'
			end
		end

		if @asleep
			@asleep = false
			puts @name + ' wakes up slowly.'
		end
	end

	def toss
		puts 'You toss ' + @name + ' up into the air.'
		puts 'He giggles, which singes your eyebrows.'
		passage_of_time
	end

	def rock
		puts 'You rock ' + @name + ' gently.'
		@asleep = true
		puts 'He briefly dozes off...'
		passage_of_time

		if @asleep
			@asleep = false
			puts '...but wakes when you stop.'
		end
	end

	private

	# "private" means that the methods defined here are methods internal to that object
	# (You can feed the dragon, but can't ask if he's hungry)

	def hungry?
		# method names can end with "?"
		# usually we only do this if method returns true or false
		@stuff_in_belly <= 2
	end

	def poopy?
		@stuff_in_intestine >= 8
	end

	def passage_of_time
		if @stuff_in_belly > 0
			# move food from belly to intestine
			@stuff_in_belly = @stuff_in_belly - 1
			@stuff_in_intestine = @stuff_in_intestine + 1
		else # our dragon is starvin
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end

			puts @name + ' is starving! In desperation, he ate YOU!'
			exit # quits the program
		end

		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts 'Whoops! ' + @name + ' had an accident...'
		end

		if hungry?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly'
			end

			puts @name + '\s stomach grumbles...'
		end

		if poopy?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly!'
			end
			puts @name + ' does the potty dance...'
		end
	end

end

pet = Dragon.new 'Norbert'


def interact_with_dragon dragon
	exit = false;

	while (not exit)
		puts 'What would you like to do?'
		action = gets.chomp

		if action == 'feed'
			dragon.feed
		elsif action == 'walk'
			dragon.walk
		elsif action == 'bed'
			dragon.put_to_bed
		elsif action == 'toss'
			dragon.toss
		elsif action == 'rock'
			dragon.rock
		elsif action == 'exit'
			exit = true;
		else
			'Please enter a valid command.'
		end
	end
end

interact_with_dragon pet






