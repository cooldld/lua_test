Set = {}

function Set.new (l)
    local set = {}
    for k, v in ipairs(l) do set[v] = true end
    return set
end

function Set.union (a, b)
    local res = Set.new{}
    for k in pairs(a) do res[k] = true end
    for k in pairs(b) do res[k] = true end
    return res
end

function Set.intersection (a, b)
    local res = Set.new{}
    for k in pairs(a) do res[k] = b[k] end
    return res
end

function Set.tostring (set)
    local l = {}
    for e in pairs(set) do
        l[#l + 1] = e
    end
    return "{" .. table.concat(l, ", ") .. "}"
end

--[[
function Set.print (s)
    print(Set.tostring(s))
end
--]]

local mt = {}

function Set.new (l)
    local set = {}
    setmetatable(set, mt)
    for k, v in ipairs(l) do set[v] = true end
    return set
end

s1 = Set.new{10, 20, 30, 50}
s2 = Set.new{30, 1}
print(getmetatable(s1))
print(getmetatable(s2))
print("s1", Set.tostring(s1))
print("s2", Set.tostring(s2))

mt.__add = Set.union

s3 = s1 + s2
print("s1 + s2", Set.tostring(s3))

mt.__mul = Set.intersection
print("s3 * s1", Set.tostring(s3 * s1))

mt.__le = function (a, b)
    for k in pairs(a) do
        if not b[k] then return false end
    end
    return true
end

mt.__lt = function (a, b)
    return a <= b and not (b <= a)
end

mt.__eq = function (a, b)
    return a <= b and b <= a
end

s1 = Set.new{2, 4}
s2 = Set.new{4, 10, 2}
print("s1 <= s2", s1 <= s2)
print("s1 < s2", s1 < s2)
print("s1 >= s1", s1 >= s1)
print("s1 > s1", s1 > s1)
print("s1 == s2 * s1", s1 == s2 * s1)

mt.__tostring = Set.tostring

print(s1)
print(s2)

mt.__metatable = "not your business"
s1 = Set.new{}
print(getmetatable(s1))
setmetatable(s1, {})
