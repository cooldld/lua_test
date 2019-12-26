--Meta class
rectangle = {area = 0, length = 0, breadth = 0}

--Derived class method new

function rectangle:new(o, length, breadth)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    self.length = length or 0
    self.breadth = breadth or 0
    self.area = length * breadth
    return o
end

--Derived class method print_area

function rectangle:print_area()
    print("The area of rectangle is", self.area)
end

--创建一个对象
print("rectangle:new(nil, 10, 20)")
r = rectangle:new(nil, 10, 20)

--访问属性
print("r.length")
print(r.length)

--访问成员函数
print("r.print_area")
r:print_area()
