def elevator(a,b)

  floors = b - a
  floor = 0
  maxfloors=100

  if(b > maxfloors)
    puts "This level doesn't exist"
  elsif(floors == 0)
    puts "You are already on floor #{a}"
  elsif(floors < 0)
    puts "You will go down #{-floors} floors"
  else
    puts "You will go up #{floors} floors"
  end

end

elevator(2,3)
elevator(2,300)
