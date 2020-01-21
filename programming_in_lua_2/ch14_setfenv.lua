a = 1
local newgt = {}
setmetatable(newgt, {__index = _G})
_ENV = newgt --as like as setfenv(1, newgt)
print("a", a)
print("_G.a", _G.a)

a = 10
print("a", a)
print("_G.a", _G.a)

_G.a = 12
print("a", a)
print("_G.a", _G.a)
