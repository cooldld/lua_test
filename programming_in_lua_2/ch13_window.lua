Window = {}
Window.prototype = {x = 0, y = 0, width = 100, height = 100}
Window.mt = {}

function Window.new (o)
    setmetatable(o, Window.mt)
    return o
end

--meta function 1
Window.mt.__index = function (table, key)
    return Window.prototype[key]
end

w = Window.new{x = 10, y = 20}
print("w.width", w.width)

--meta function 2
Window.mt.__index = Window.prototype

w = Window.new{x = 13, y = 23}
print("w.width", w.width)
