# Four ways of running the beer app

def songwhile(n, bev)
	m = n
	while n >= 1 # This worked without the do
		puts "#{n} bottles of #{bev} on the wall, #{n} bottles of #{bev}."
		n -= 1
		puts "Take one down and pass it around, #{n} bottles of #{bev} on the wall."
	end
	puts "No more bottles of #{bev} on the wall, no more bottles of #{bev}."
	puts "Go to the store and buy some more, #{m} bottles of #{bev} on the wall."
end

def songuntil(n, bev)
	m = n
	until n < 1 # This worked without the do
		puts "#{n} bottles of #{bev} on the wall, #{n} bottles of #{bev}."
		n -= 1
		puts "Take one down and pass it around, #{n} bottles of #{bev} on the wall."
	end
	puts "No more bottles of #{bev} on the wall, no more bottles of #{bev}."
	puts "Go to the store and buy some more, #{m} bottles of #{bev} on the wall."
end

def songfor(n, bev)
	m = n
	for n in n.downto(1) do
		puts "#{n} bottles of #{bev} on the wall, #{n} bottles of #{bev}."
		n -= 1
		puts "Take one down and pass it around, #{n} bottles of #{bev} on the wall."
	end
	puts "No more bottles of #{bev} on the wall, no more bottles of #{bev}."
	puts "Go to the store and buy some more, #{m} bottles of #{bev} on the wall."
end

# This does not work as initially expected, when using .times
def songdownto(n, bev)
	m = n
	n.downto(1) do |n|
		puts "#{n} bottles of #{bev} on the wall, #{n} bottles of #{bev}."
		puts "Take one down and pass it around, #{n - 1} bottles of #{bev} on the wall."
	end

	puts "No more bottles of #{bev} on the wall, no more bottles of #{bev}."
	puts "Go to the store and buy some more, #{m} bottles of #{bev} on the wall."
end

puts "What type of beverage do you like to drink?"
beverage = gets.chomp
puts "How many bottles would you like to drink?"
bottles = gets.chomp

songwhile(bottles.to_i, beverage)
puts ""
songuntil(bottles.to_i, beverage)
puts ""
songfor(bottles.to_i, beverage)
puts ""
songdownto(bottles.to_i, beverage)