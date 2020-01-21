function read_only (t)
    local proxy = {}
    local mt = {
        __index = t,
        __newindex = function (t, k, v)
            error("attempt to update a read-only table", 2)
        end
    }
    setmetatable(proxy, mt)
    return proxy
end

days = read_only{"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"}

print(days[2])
days[2] = "Monday"
