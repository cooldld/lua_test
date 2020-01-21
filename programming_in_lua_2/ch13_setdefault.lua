--demo1
function set_default (t, d)
    local mt = {__index = function () return d end}
    setmetatable(t, mt)
end

tab = {x = 10, y = 11}
print(tab.x, tab.z)

set_default(tab, 23)
print(tab.x, tab.z, tab.a)

tab.z = 13
print(tab.z, tab.a)

--demo2
local mt = {__index = function (t) return t.___ end}
function set_default (t, d)
    t.___ = d
    setmetatable(t, mt)
end

tab = {x = 10, y = 11}
print(tab.x, tab.z)

set_default(tab, 23)
print(tab.x, tab.z, tab.a)

tab.z = 13
print(tab.z, tab.a)

--demo3
local key = {}
local mt = {__index = function (t) return t[key] end}
function set_default (t, d)
    t[key] = d
    setmetatable(t, mt)
end

tab = {x = 10, y = 11}
print(tab.x, tab.z)

set_default(tab, 23)
print(tab.x, tab.z, tab.a)

tab.z = 13
print(tab.z, tab.a)
