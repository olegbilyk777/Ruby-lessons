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
	@@count = 0

	def initialize(b, h)
		 @base = b
		 @height = h

	@@count += 1
	end

	def getArea
		(@base * @height)/2
	end

	def self.printCount ()
		puts "Triangle count is : #{@@count}"
	end

	def to_s
		"(b:#@base, h:#@height)" #String formatting of the object
	end
end

class Restangle
	#Constructor
	def initialize(l,w,h)
		@length = l
		@width = w 
		@height = h
	end
	#Instance method Will calculate
	def getPerimeter
		@length + @width + @height
	end
end
#Questions being asked here
print "Please enter the base of triangle : "
bs = gets.chomp.to_f
print "Please enter the height of the triangle : "
ht = gets.chomp.to_f

#New object triangle1 being created wich will take variables from questions
#And plug them into class Triangle getArea method
triangle1 = Triangle.new(bs, ht)
triangle2 = Triangle.new(25,42)
triangle3 = Triangle.new(88,77)
bob = Triangle.new(500,600)

#Call to instance method
AreaOfTriangle = triangle1.getArea()
puts "The area of the triangle is : #{AreaOfTriangle}"

#to_s method will be called in reference of string automatically
puts "String representation of triangle is : #{triangle1}"
puts "String representation of triangle3 is : #{triangle3}"
puts "String representation of triangle2 is : #{triangle2}"
puts "String representation of bobby is : #{bob}"

#call class method to print triangle count
Triangle.printCount()

print "Please enter the length of the restangle : "
l = gets.chomp.to_f
print "Please enter the width of the restangle : "
w = gets.chomp.to_f
print "Please enter the height of the restangle : "
h = gets.chomp.to_f

rectone = Restangle.new(l,w,h)
p = rectone.getPerimeter()

puts "The perimeternof this restangle is : #{p}"
