def elevator(floor_entered, floor_exited)

levels = (-2..20).to_a

  if levels.include?(floor_entered) && levels.include?(floor_exited)
    if floor_entered > floor_exited
      puts "You'll go down #{floor_entered - floor_exited} levels"
    elsif floor_entered < floor_exited
      puts "You'll go up #{floor_exited - floor_entered} levels"
    else
      puts "You are already on level #{floor_entered}"
    end
  else
    puts "This level doesnt exist"
  end

end
