duplicate_stn = [ "28th", "23rd", "8th" ]

def prompt(txt)
  puts txt
  gets.chomp
end

def get_line(all_lines, station) # returns the line the station is on
  line_idx = ''
  all_lines.each_pair { |key,val|
    if all_lines[key].include? station
      line_idx = key
    end
  }
  return all_lines[line_idx]
end

def get_stn_line(lin,on_off)
  print "\nGetting #{on_off}:\n-----------\n"
  line1=prompt("\nEnter Line you are getting #{on_off}: (N,L,6)")
  stn_1=prompt("\nEnter station you are getting #{on_off}:\n")
  if (line1 == "n" && stn_1 != "Union")
    stn_1 << "_"
  end
  [stn_1, line1, get_line(lin,stn_1)]
end

def print_lines
  print "N:\n"
  p  n  =  ["Times",  "34th", "28th", "23rd","Union", "8th" ]      #yellow
  print "L:\n"
  p  l  =  ["8th",    "6th",                   "Union", "3rd", "1st" ]#grey
  print "6:\n"
  p  l6 =  ["Grand",   "33rd", "28th", "23rd", "Union", "Astor" ]      #green
end

lin = {
  "n1" => ["Times_", "34th_", "28th_", "23rd_","Union"],  #yellow
  "n2" => ["8th_",                             "Union"],
  "l1" => ["8th",    "6th",                    "Union"],
  "l2" => ["1st",    "3rd",                    "Union"],  #green
  "6a" => ["Grand",  "33rd",  "28th",  "23rd", "Union"],  #grey
  "6b" => ["Astor",                            "Union"]
}

print_lines
stn_1,line1,line1_ = get_stn_line(lin,"on")
stn_2,line2,line2_ = get_stn_line(lin,"off")
line2_             = get_line(lin,stn_2)
line2_             = line2_.reverse

if line1 == line2
  if line1_.index(stn_1) > line1_.index(stn_2)
    trip = line1_[line1_.index(stn_2)...line1_.index(stn_1)+1].reverse
  else
    trip = line1_[line1_.index(stn_1)...line1_.index(stn_2)+1]
  end
else
  trip =  line1_[ line1_.index(stn_1)  ... line1_.length  ] +
          line2_[ 1                    ... line2_.index(stn_2)+1   ]
end

p trip.each{|x| x.chop! if x.end_with? '_'}
