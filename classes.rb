class Person
  
    attr_accessor :age
  
    def initialize(age)
          @age=age
  end

end

class Student < Person
  attr_accessor :name
end

class Teacher < Person
  attr_accessor :name , :type
end


student = Student.new(14)
student.name="Petr"
student.age=14

teacher = Teacher.new(34)
teacher.age=34
teacher.name="Maria Ivanovna"
teacher.type="teacher"

puts teacher.inspect
puts student.inspect

otherPerson = student.convertStdToTeacher

puts otherPerson.inspect