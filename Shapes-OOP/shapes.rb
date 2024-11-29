class Shape
    attr_accessor :color
    def initialize(color="Grey", area=0, perimeter=0)
        @color = color
        @area = area
        @perimeter = perimeter
    end
    def draw-element()
        put "This is a ${self.class.name}."
    end
    def area
        return @area
    end
    def perimeter
        return @perimeter
    end
end

# these do not include irregular polygons rn
class RegularPolygon < Shape
    attr_reader :length :num_of_sides :apothem
    def initialize(color, length=1, num_of_sides=3, apothem=1)
        if num_of_sides < 3
        @length = length
        @num_of_sides = num_of_sides
        @apothem = apothem
        super(color, area, perimeter)
    end 
    def area
        return perimeter * apothem / 2
    end
    def perimeter
        return length * num_of_sides
    end
end

class Quadrilateral < Polygon
    attr_reader :sides 
    def initialize(color, sides)
        @sides = sides
        super (color, length, 4, 2)
    end
    def length
        length = 0
        sides.each { |side| length += side}
        return length
    end
end


    