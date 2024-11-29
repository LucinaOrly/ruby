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
class Polygon < Shape
    def initialize(color, length=1, num_of_sides=3, apothem=1)
        super(area)
        if num_of_sides < 3
            
        @length = length
        @num_of_sides = num_of_sides
        @apothem = apothem
    end 
    def area
        return perimeter * apothem / 2
    end
    def perimeter
        return length * num_of_sides
    end

    