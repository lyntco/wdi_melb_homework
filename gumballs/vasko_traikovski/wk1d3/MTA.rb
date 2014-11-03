
lines = {
	"n"  =>  ["a","Times", 	"34th", "28th_", "23rd_","Union", "8th_" ],      #yellow
	"l"  =>  ["b","8th", 	"6th", 	               	   "Union", "3rd", "1st" ],#grey
	"6" =>  ["Grand", 	"33rd", "28th", "23rd",  "Union", "Astor" ]      #green
}

lin = {
 	"n"   =>  ["Times", "34th", "28th_", "23rd_",	"Union"],      #yellow
	"n2"  =>  ["8th", 	"6th", 	               	  "Union"],#grey
	"l"   =>  ["Grand", "33rd", "28th", "23rd",  	"Union"],
	"l2"  =>  ["8th_", 														"Union"],
	"6"   =>  ["1st",		"3rd",										"Union"],
	"62"  =>  ["Astor",														"Union"]
}

def join_at(a,b,u) 						# join_at( [1,2,"u",4] ,[22,"u",33],"u") = [1,2,"u",33]
  a[ 0           	... 	a.index(u)+1 	] +
  b[ b.index(u)+1 ... 	b.length 			]
end

def prompt(txt)
	puts txt
	gets.chomp.downcase
end

def show_lines(lines)
	print "N: ";p lines[ "n" ]
	print "L: ";p lines[ "l" ];
	print "6: ";p lines[ "6"  ]
	puts ""
end


trip = []
show_lines(lines)
#START

# check if arr contains:
# ['Cat', 'Dog', 'Bird'].include? 'Dog'
# iterate over hash of arrrays
# hash = {}
def get_line(lin, u)
	s1=''
	lin.each_pair do |key,val|
	  if lin[key].include? u
	  	s1=key
	  	p "key: "+key
	  else
	  	p "not found"
	  end
	    #your code, for example adding into count and total inside program scope
	end
	return lin[s1]
end



aa =  get_line(lin,"34th")
p "aa"
p aa
p aa[ aa.index("34th") ... 	aa.length			]


# line1 = prompt("START: What line are you starting on (N,L,6)?")
# p l1=lines[line1]
stat1 = prompt("enter your station:")
puts s1=lines[line1].index(stat1)





#END

line2 = prompt("END: What line is your destination (N,L,6)?").reverse
p l2=lines[line2]
stat2 = prompt("enter your station:")
puts s2=lines[line2].index(stat2)

u=lines[line2].index("Union")
if s2>u
	(u..s2).each { |i| trip << l2[i];print i }
else

	s2.downto(u).each { |i| trip << l2[i];print i }
end
p trip





#line1 = (lineN == true)? lines["n"] : get_line(station1,lineN)
# show_lines(lines)



def whichLine(stop)
	if lines["n"].include? 'Times'
		# puts "yes"
	else
		# puts "no"
	end
end



array = (1..10).to_a


#   a = [ "a", "b", "c" ]
#   a.index("b")              #=> 1
#   a.index("z")              #=> nil
#   a.index { |x| x == "b" }  #=> 1

# puts "enter starting station line (N,L,6)"
# line = gets.chomp.downcase
# line = (line.to_i === 6) ? "l6" : line

# puts line

#puts "enter start station"
#start = gets.chomp
# line = whichLine("Times")
# line = whichLine("Times2")

#puts "enter destination station line (N,L,6)"
# line = gets.chomp.downcase
# line = (line.to_i === 6) ? "l6" : line

#puts "enter destination station"
#ending = gets.chomp

 #['Cat', 'Dog', 'Bird'].include? 'Dog'
 	n  =  ["Times", 	"34th", "28th", "23rd", "Union" ]
	l  =  ["8th", 		"6th", 	               	"Union", "3rd", "1st" ]
	ll =  ["Grand", 	"33rd", "28th", "23rd", "Union", "Astor" ]
duplicates=["28th_", "23rd_","8th_"]
# p '--+==='
# p ["ant","bear", "Times"].any? {|word,i| xx=n.include? word}

 	["Times", 	"34th", "28th_", "23rd_", 	"Union" ]
 	["8th_", 								"Union" ]
	["8th", 		"6th", 	               	"Union" ]
	["1st", "3rd", 							"Union" ]
	["Grand", 	"33rd", "28th", "23rd", 	"Union" ]
	["Astor", 								"Union" ]

 p "End---"
all_lines = [
	["Times", 	"34th", "28th", "23rd", "Union"],
	['aa', 'bbb','bb'],
	['aa', 'b']
]

# all_lines.each{ |x|
# 	idx = x.index('34th');
# 	# puts "idx: #{idx}"
# 	unless idx.nil?
#   #   puts "idx exists!"
#   #   puts 'on i #{i}'
#   #   puts 'on line #{x}'
#   #   puts x
# 		# puts x[idx]
#   else
#     # p 'idx doesnt !!'
# 	end
# 	# p "--"

# }
 # puts a.include? 'aa'
 # puts idx = a.index('bb')


# thisLine=lines[line]
# p thisLine


5.downto(1) do |i|
puts i
end