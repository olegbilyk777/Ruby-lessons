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
triangle2 = Triangle.new(18,35)
triangle3 = Triangle.new(78,66)
bob = Triangle.new(800,900)

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

puts "The perimeter of this restangle is : #{p}"




		
 