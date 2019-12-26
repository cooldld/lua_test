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

--继承
square = shape:new()

function square:new(o, side)
    o = o or shape:new(o, side)
    setmetatable(o, self)
    self.__index = self
    return o
end

--Derived class method print_area
function square:print_area()
    print("The area of square is", self.area)
end

--Creating an object
mysquare = square:new(nil, 10)
mysquare:print_area()

--继承
abc = shape:new()

function abc:new(o, a, b)
    o = o or shape:new(o)
    setmetatable(o, self)
    self.__index = self
    self.area = a * b
    return o
end

--Derived class method print_area
function abc:print_area()
    print("The area of abc is", self.area)
end

--Creating an object
myabc = abc:new(nil, 9, 2)
myabc:print_area()
