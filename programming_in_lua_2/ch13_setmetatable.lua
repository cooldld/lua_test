t = {}
print("getmetatable", getmetatable(t))

mt = {}
print("mt", mt)

print("setmetatable mt")
setmetatable(t, mt)
print("getmetatable", getmetatable(t))
