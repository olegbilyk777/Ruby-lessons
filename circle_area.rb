# Steps;
# 1. Define a new object
# 2. Create an instance of your object
# 3. Call methods on your object

class Circle
	def initialize(radius)

		@radius = radius

	end

	def area

		Math::PI * (@radius ** 2)

	end

	def perimeter

		2 * Math::PI * @radius

	end
end

print "What is the radius of your circle? > "

radius = gets.to_i

a_circle = Circle.new(radius)

puts "Your circle has an area of #{a_circle.area}"

puts "Your circle has a perimeter of #{a_circle.perimeter}"

class Square 

	def initialize(width  )
		@width = width

	end

	def area

		@width * @width

	end
end
		
print "What are the parameters of the Square? > "

parameters = gets.to_i

a_square = Square.new(parameters)

puts "Your square has an area of #{a_square.area}"


class Triangle

	def initialize(a, b )
		@a, @b, = a, b 
	end

	def area

		(@a * @b)/2
	end
end

print "What are the parameters of the Triangle? >"

parameters = gets.to_i

a_triangle = Triangle.new(parameters)

puts "Your triangle has an area of #{a_triangle.area}"