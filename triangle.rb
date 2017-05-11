#Steps;
# 1. Define a new object
# 2. Create an instance of your object
# 3. Call methods on your object


class Triangle
	def initialize(a, b, c)
		@a, @b, @c = a, b, c
	end

	def Triangle.random(foo = RANDOM_PT)
		Triangle.new(foo.call, foo.call, foo.call)
	end

	def [] (i)
		[@a, @b, @c] [i]
	end

	def area
		p0 = @c
		area2 = 0
		[@a, @b, @c].each { |p|
			area2 += p0[0]*p[1] - p0[0]*p[1]
			p0 = p
		}
		(area2 / 2.0).abs
	end

	def inspect 

		"Triangle[#{@a}, #{@b}, #{@c}]"

	end

	alias to_s inspect

end
	



		
