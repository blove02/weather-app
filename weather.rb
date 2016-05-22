require 'barometer'

puts "Where city are you in (Zip, City & State ex. New York, NY)?"
location = gets

barometer = Barometer.new(location)
weather = barometer.measure
tomorrow = Time.now.strftime("%d").to_i + 1

weather.forecast.each do |forecast|
	day = forecast.starts_at.day

	if day == tomorrow
		day_name = "Tomorrow"
	else
		day_name = forecast.starts_at.strftime("%A")
end

	puts day_name + " is going to be " + forecast.icon + " with a low of " + forecast.low.f.to_s + 
	" and a high of " + forecast.high.f.to_s + "."
end