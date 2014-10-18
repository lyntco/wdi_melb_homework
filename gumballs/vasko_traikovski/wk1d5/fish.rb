fish1 ={

}

fish2 ={

}

shark1={

}

seaworld =[]
seaworld << fish1 << fish2 << shark1

def move_fish(fish)
  # move fish
end

def move_shark(shark)
  # move shark
end

class Fish

  def initialize(health,name, speed)
    @health = health
    @name  = name
    @speed = speed
  end

  def move
  end

  def sleep
  end

end

class World
  def initialize()
    @ocean = []
  end

  def ocean
    @ocean #just returns ocean
  end

end

World.new

f1 = Fish.new(50, "dt", 1000)
seaworld =[]

5.times do
  seaworld << Fish.new()
end



