require 'pry'

subway_lines = {
  "N" => {
    
    :stops => ["TS", "34","28N","23N","US", "8N"] ,
  },
  "L" => {
    
    :stops => ["8L", "6", "US", "3", "1"] ,
  },
  "S" => {
    
    :stops => ["GC", "33", "28S" , "23S" , "US", "AP"],
  },
}


puts "Enter your start"
start = gets.chomp
puts "Enter your stop"
stop = gets.chomp
#puts ( subway_lines["N"][:stops] << subway_lines["L"][:stops] << subway_lines["S"][:stops] ).flatten!.uniq
puts start
startindex = subway_lines["N"][:stops].index 
puts startindex

#.each{ |x| if x != "US" then puts x end }

binding pry

