class OrangeTree 
	def initialize
		@treeHeight = 1
		@orangeCount = 0
		@yearsPassed = 0;
	end

	def height
		puts 'The tree is ' + @treeHeight.to_s + 'm tall'
	end

	def oneYearPasses
		@yearsPassed = @yearsPassed + 1;
		@treeHeight = @treeHeight + 0.5

		if @yearsPassed > 3
			@orangeCount = (@treeHeight * @treeHeight * 4).to_i
		end
	end

	def countYear
		puts @yearsPassed.to_s + ' years have passed.'
	end

	def countTheOranges
		puts 'There are ' + @orangeCount.to_s + ' oranges on the tree!'
	end

	def pickAnOrange
		if @orangeCount != 0
			@orangeCount = @orangeCount - 1
			puts 'Mmm, that orange was delicious!'
		else
			puts 'Oops, there are no oranges to pick!'
		end
	end
end

tree = OrangeTree.new
tree.height
tree.oneYearPasses
tree.countTheOranges
tree.countTheOranges
tree.oneYearPasses
tree.oneYearPasses
tree.oneYearPasses
tree.countTheOranges
tree.pickAnOrange
tree.countTheOranges
tree.height
tree.oneYearPasses
tree.countTheOranges
tree.oneYearPasses
tree.countTheOranges
tree.countYear