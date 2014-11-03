
num=ARGV[0].to_i
while num>1 do
	puts "#{num} bottles of beer on the wall, #{num} bottles of beer.\n"
	puts "Take one down and pass it around, #{num-1} bottles of beer on the wall.\n\n"
	num -= 1
end
puts"No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall."