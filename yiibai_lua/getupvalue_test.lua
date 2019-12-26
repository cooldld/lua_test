function new_counter()
    local n = 0
    local k = 0

    return function()
        k = n
        n = n + 1
        print("k, n", k, n)
        return n
    end
end

counter = new_counter()

print("\n--call counter()")
print("counter() 1, return", counter())
print("counter() 2, return", counter())
print("counter() 3, return", counter())

print("\n--getupvalue only")
local i = 1
repeat
    name, val = debug.getupvalue(counter, i)
    if name
    then
        print("getupvalue index", i, name, "=", val)
        i = i + 1
    end
until not name

print("\n--setupvalue(counter, 1, 111)(counter, 2, 222)")
debug.setupvalue(counter, 1, 111)
debug.setupvalue(counter, 2, 222)

print("\n--getupvalue only")
local i = 1
repeat
    name, val = debug.getupvalue(counter, i)
    if name
    then
        print("getupvalue index", i, name, "=", val)
        i = i + 1
    end
until not name

print("\n--call counter()")
print("counter() 4, return", counter())
