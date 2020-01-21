function getfield (f)
    local v = _G
    for w in string.gmatch(f, "[%w_]+") do
        print(w, v[w])
        v = v[w]
    end
    return v
end

print("getfield io.read")
getfield("io.read")

function setfield (f, v)
    local t = _G
    for w, d in string.gmatch(f, "([%w_]+)(%.?)") do
        if d == "." then
            t[w] = t[w] or {}
            t = t[w]
        else
            t[w] = v
        end
    end
end

print("setfield x.y.z")
setfield("x.y.z", 10)
print("x.y.z", x.y.z)
print("getfield x.y.z")
print(getfield("x.y.z"))
