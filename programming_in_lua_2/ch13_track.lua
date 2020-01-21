t = {}

local _t = t

t = {}

local mt = {
    __index = function (t, k)
        print("access to element " .. tostring(k))
        return _t[k]
    end,

    __newindex = function (t, k, v)
        print("update of element " .. tostring(k) .. " to " .. tostring(v))
        _t[k] = v
    end
}

setmetatable(t, mt)

t[2] = "hello"

print("t", t)
print("_t", _t)
print("t[2]", t[2])
print("_t[2]", _t[2])

tx = {}
setmetatable(tx, mt)
tx[1] = "world"

print("t[1]", t[1])
print("tx[1]", t[1])
print("_t[1]", _t[1])
