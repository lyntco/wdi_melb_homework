# https://gist.github.com/lyntco/eeb30d61f72fd7407006

class School

   def initialize(school_name="")
      @school_name=school_name
      @dB={}
   end

   def db()
     puts "dB: #{@dB}"
    #  self.dbase.file?
   end

   def add(student,grade)
    #  if !@dB[grade]
    #    @dB[grade]=[student]
    #  else
    #    @dB[grade] << student
    # end
    # same as above
    ( @dB[grade] ||= [] ) << student
   end

   def grade(gr)
     p @dB[gr]
   end

   def sort
     puts "sort"
     @dB.keys.sort.each{|i| puts "grade "+i.to_s+": "+@dB[i].sort.to_s}
   end

end



school = School.new("Haleakala Hippy School")

school.db# => {}
school.add("James", 2)
school.db
school.add("Phil", 2)
school.add("Alan", 2)
school.add("Jennifer", 3)
school.add("Little Billy", 1)
school.db
school.grade(2)
school.sort
