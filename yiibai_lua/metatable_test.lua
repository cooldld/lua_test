--demo1
mytable = {}
mymetatable = {}
setmetatable(mytable, mymetatable)

--demo2
mytable = setmetatable({}, {})

--demo3
print("--demo3")
mytable = setmetatable({key1 = "hello"}, {})
print("mytable.key1", mytable.key1)

--demo4
print("--demo4")
mytable = setmetatable({key1 = "hello"}, {})
mytable = setmetatable({key2 = "world"}, {})
print("mytable.key1", mytable.key1)
print("mytable.key2", mytable.key2)

--demo5
print("--demo5, __index a function")
mytable = setmetatable({key1 = "hello"}, {
    __index = function(mytable, key)
        if (key == "key1")
        then
            return mytable[key]
        end
    end
})
print("mytable.key1", mytable.key1)
print("mytable.key2", mytable.key2)
print("mytable.key3", mytable.key3)

--demo6
print("--demo6, __index a metatable")
mytable = setmetatable({key1 = "hello"}, {__index = {key2 = "world"}})
print("mytable.key1", mytable.key1)
print("mytable.key2", mytable.key2)
print("mytable.key3", mytable.key3)

--demo7
print("--demo7, __newindex")
mymetatable = {}
mytable = setmetatable({key1 = "hello"}, {__newindex = mymetatable})
print("mytable.key1", mytable.key1)
print("mytable.key2", mytable.key2)
print("add key2")
mytable.key2 = "new key2"
print("mytable.key1", mytable.key1)
print("mytable.key2", mytable.key2)
print("mymetatable.key2", mymetatable.key2)
print("add key3")
mytable.key3 = "new key3"
print("mymetatable.key2", mymetatable.key2)
print("mymetatable.key3", mymetatable.key3)

--demo8
print("--demo8, __newindex rawset")
mytable = setmetatable({key1 = "hello"}, {
    __newindex = function(mytable, key, value)
        rawset(mytable, key, "\""..value.."\"")
    end
})
mytable.key1 = "new key1 hello"
mytable.key2 = 3
print("mytable.key1", mytable.key1)
print("mytable.key2", mytable.key2)
print("mytable.key3", mytable.key3)

--demo9
print("--demo9, __add")
mytable = setmetatable({1, 2, 3}, {
    __add = function(mytable, newtable)
        for k, v in pairs(newtable)
        do
            table.insert(mytable, v)
        end
        return mytable
    end
})

youtable = {"aaa", "bbb", "ccc"}
mytable = mytable + youtable

for k, v in pairs(mytable)
do
    print(k, v)
end

--demo10
print("--demo10, __call")
mytable = setmetatable({100}, {
    __call = function(mytable, newtable)
        sum = 0
        for k, v in pairs(mytable)
        do
            sum = sum + v
        end
        for k, v in pairs(newtable)
        do
            sum = sum + v
        end
        return sum
    end
})

youtable = {1, 2, 3}
print("mytable(youtable)", mytable(youtable))
