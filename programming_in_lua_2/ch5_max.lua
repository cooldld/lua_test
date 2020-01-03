function maximum(a)
    local mi = 1
    local mv = a[mi]
    for k, v in pairs(a)
    do
        if v > mv
        then
            mi = k
            mv = v
        end
    end
    return mi, mv
end

print(maximum({8, 10, 23, 12, 5}))
