function add(...)
    local s = 0
    for k, v in ipairs{...}
    do
        s = s + v
    end
    return s
end

print(add(3, 4, 10, 25, 12))
