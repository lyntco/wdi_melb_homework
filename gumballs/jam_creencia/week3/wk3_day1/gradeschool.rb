
require "pry"


 class School 
 		attr_accessor :school_name, :grade_list
 		
 		def initialize (school_name)
 			@school_name = school_name
 			# @grade_list = {
 			# 	1 => [],
 			# 	2 => [],
 			# 	3 => [],
 			# 	4 => [],
 			# 	5 => [],
 			# 	6 => [],
 			# 	7 => []
 			# }

 			@grade_list = {}
 		end
		

 		def add (student_name , grade)
 			# @grade_list.each_key do |level| 
 			# 	if level == grade 
 			# 		@grade_list[grade] << student_name
 			# 	end
 			# end


 		# 	if @grade_list[grade] == nil
 		# 		@grade_list[grade] = [student_name]
 		# 	else
 		# 		@grade_list[grade] << student_name
 		# 	end


 		# this is the SHORT VERSION of above! it says if there is a grade _list[grade], then ignore this line.
 		# but if there's none, add @grade_list[grade] = []
 		@grade_list[grade] ||= []
 		@grade_list[grade] << student_name

 		end

 		def db
 			@grade_list
 		end

 		def grade(grade)
 			@grade_list[grade]
 		end

 		def sort
 			@grade_list.each_value do |v|
 				v.sort!

 			end
 		end

 end


binding.pry

