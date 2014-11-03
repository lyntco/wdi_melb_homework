class School

	def initialize(name)
		@name = name
		@school = Hash.new { |h, k| h[k]=[] }
	end

	def add(student, grade)
		@school[grade] << student
	end

	def db
		puts @school
	end

	def grade(grade)
		p @school[grade]
	end

	def sort
		@school.each_value { |val| val.sort! }
		p Hash[@school.sort]
	end

end

school = School.new("Haleakala Hippy School")

school.db

school.add('sarah', 3)
school.add('jane', 3)
school.add('tim', 2)
school.add('mike', 2)
school.add('mike', 2)

school.db
school.grade(2)
school.sort
