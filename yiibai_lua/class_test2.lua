--Meta class
shape = {area = 0}

--Base class method new

function shape:new(o, side)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    side = side or 0
    self.area = side * side
    return o
end

--Base class method print_area
function shape:print_area()
    print("The area is", self.area)
end

--Creating an object
myshape = shape:new(nil, 10)

myshape:print_area()
