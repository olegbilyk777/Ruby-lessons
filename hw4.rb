class Human
	attr_accessor :father_name, :last_name
	def initialize (name, father_name, last_name)
		@name = name
		@father_name = father_name
		@last_name = last_name
	end
	def hey_you
		"#{@name}" "#{@father_name}" "#{@last_name}"

	end
end

class Teacher < Human
	def hey_you
		"#{@name} #{@father_name}"
	end
end

class Pupil < Human
	def hey_you
		"#{@last_name}"
	end
end

class Cleaner < Human
	attr_accessor :years
	def initialize (name, father_name, last_name, years)
		super(name, father_name, last_name)
		@years = years
	end
def hey_you
	"#{@last_name}" "#{@years}"
	end
end

mrs_Daughtfier = Teacher.new("Julia", "Curt", "Smith")
teenager = Pupil.new("Samantha", "Michael", "Smith")
puts mrs_Daughtfier.hey_you
puts teenager.hey_you
teenager.last_name = "Jack"
puts teenager.hey_you	

grandma = Cleaner.new("Veronica", "Joshua", "King", 55)
puts grandma.hey_you






