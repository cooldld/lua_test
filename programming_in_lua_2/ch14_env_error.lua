setmetatable(_G, {
    __newindex = function (_, n)
        error("attemp to write a new env variable " .. n, 2)
    end,
    __index = function (_, n)
        error("attemp to read a new env variable " .. n, 2)
    end
})

rawset(_G, "ddd", 4)
print("ddd", ddd) --ok

local function env_declare (name, initval)
    rawset(_G, name, initval or false)
end

env_declare("ccc", 3)
print("ccc", ccc) --ok

local bbb = 2 --ok
print("bbb", bbb) --ok

aaa = 1 --write error

print("io", io) --ok
print("aaa", aaa) --read error
