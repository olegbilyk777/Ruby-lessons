class Shape

	attr_accessor :color

	def initialize(color="Red")
		
		@color = color
	end

	class Circle < Shape

		attr_accessor :color, :shape, :radius

	def initialize(radius, color="Red")

		super(color)

		@radius = radius

	end

	def area

		Math::PI * (@radius ** 2)

	end
end

print "What is the radius of your circle? > "

radius = gets.to_i

a_circle = Circle.new(radius)

puts "Your circle has an area of #{a_circle.area}"

end


class Square < Shape

	attr_accessor :color, :shape, :width

	def initialize(width, color="Red")

		super(color)

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

end

end
