celcius = nill

while celcius == nill

	puts "Hello! Type 1 -if you want type value from keyboard"

	puts "2 -if you want read value from file"

	value = gets.to_i

	if value == 1

		puts "Hello! Puts a celcius value..:"

		celsius = gets.to_i

	elsif value == 2

		celcius = File.read ("temp.dat").to_i

	end

end
		

fahrenheit = (celcius*9/5)+32

print "Result it "

print fahrenheit

puts "."

ffile = File.new("out.dat","w")

ffile.puts(celsius.to_s+" celsius is "+ " fahrenheit.to_s")

ffile.close

