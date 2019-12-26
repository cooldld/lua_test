--pcall demo
print("\n--pcall demo")
local function add(a, b)
    return a + b
end

if pcall(add, 10, 1)
then
    print("pcall(add, 10, 1) return true")
else
    print("pcall(add, 10, 1) return false")
end

if pcall(add, 10)
then
    print("pcall(add, 10) return true")
else
    print("pcall(add, 10) return false")
end

--xpcall demo
print("\n--xpcall demo")

local function add_error(err)
    print("add_error:", err)
end

ret = xpcall(add, add_error)
print("xpcall(add, add_error) return", ret)
