require 'pry'

def angle(time)
	p "#{time}"
	p "#{time.hour}"
	p "#{time.min}"

	minuteAngle = ((time.min)/60.to_f)*Math::PI

	if time.hour > 12
		hourAngle = ((time.hour - 12)/12.to_f)*Math::PI
	else
		hourAngle = ((time.hour)/12.to_f)*Math::PI
	end

	# minuteAngle = ((55)/60.to_f)*Math::PI
	# hourAngle = ((1)/12.to_f)*Math::PI

	difference = (hourAngle-minuteAngle).abs
	pi_on_2 = (Math::PI)/2

	if difference > (pi_on_2)
		p "difference: #{difference-pi_on_2}"
	else
		difference
	end
end

p "pi/2= #{(Math::PI)/2}"
p "pi= #{(Math::PI)}"
p "------------------------"
 
angle(Time.now)
