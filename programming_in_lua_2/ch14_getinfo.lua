setmetatable(_G, {
    __newindex = function (t, n, v)
        local w = debug.getinfo(2, "S").what
        print("what", w)
        if w ~= "main" and w ~= "C" then
            error("attemp to write a new env variable " .. n, 2)
        end
        rawset(t, n, v)
    end,
    __index = function (_, n)
        error("attemp to read a new env variable " .. n, 2)
    end
})

a = 1
print("a", a)

local function env_check (name)
    if rawget(_G, name) == nil then
        print("no env variable " .. name)
    else
        print("have env variable " .. name)
    end
end

env_check("a")
env_check("xyz")

--a error happen
--[[
b = nil
print("b", b)
--]]

--how to fix b = nil
local declared_names = {}
setmetatable(_G, {
    __newindex = function (t, n, v)
        if not declared_names[n] then
            local w = debug.getinfo(2, "S").what
            print("what", w)
            if w ~= "main" and w ~= "C" then
                error("attemp to write a new env variable " .. n, 2)
            end
            declared_names[n] = true
        end
        rawset(t, n, v)
    end,
    __index = function (_, n)
        if not declared_names[n] then
            error("attemp to read a new env variable " .. n, 2)
        else
            return nil
        end
    end,
})

b = nil
print("b", b)
