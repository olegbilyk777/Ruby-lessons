class Figure
    attr_accessor :area,:params1
    def initialize(area=-1,params1)
        @area = area
        @params1 = params1
    end
    def calc_area#(params1)
        return @area = Math::PI*@params1.to_f**2
    end    
end

class Circle < Figure; end

class Rectangle < Figure
    attr_accessor :params2
    def initialize (area=-1,params1,params2)
        super(area =-1,params1)
        @params2 = params2
    end
    def calc_area#(params1,params2)
        return @area = @params1.to_f*@params2.to_f
    end
end

class Triangle < Rectangle
    def calc_area#(params1,params2)
        return super/2
    end    
end

def make_array_from_file(filename)
    a=[]
    File.readlines(filename).each_with_index do |line, line_num|
        a[line_num]=line
        end
    return a
end

n=make_array_from_file("areafile.txt")
#puts n[14].class

def get_data(array,figure)
    out_array=[]
    n=0
    array.each do |item|
        item.chomp!
        item = item.delete(" ")
        string,data = item.split(":")
        if string ==figure and not data.nil?
            value = data.split(",")
            if figure =="circle"

                out_array[n]=value.slice(0)
                out_array[n]=Circle.new(out_array[n])
                out_array[n]=out_array[n].calc_area.round(3)
                n+=1
                else if figure =="rectangle"

                out_array[n]=value.slice(0..1)
                out_array[n]=Rectangle.new(out_array[n][0],out_array[n][1])
                out_array[n]=out_array[n].calc_area.round(3)
                n+=1
                else if figure =="triangle"

                out_array[n]=value.slice(0..1)
                out_array[n]=Triangle.new(out_array[n][0],out_array[n][1])
                out_array[n]=out_array[n].calc_area.round(3)
                n+=1
                end
            end    
        end
        end
    end    
    return out_array
end
circles = get_data(n,"circle")
rectangles = get_data(n,"rectangle")
triangles = get_data(n,"triangle")

puts "Circle areas:"
circles.each do  |item|
    puts "      #{item}"
end

puts "Rectangle areas:"
rectangles.each do  |item|
    puts "      #{item}"
end

puts "Triangle areas:"
triangles.each do  |item|
    puts "      #{item}"
end