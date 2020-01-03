function arg_ipairs(...)
    for k, v in ipairs{...}
    do
        print(k, v)
    end
end

function arg_pairs(...)
    for k, v in pairs{...}
    do
        print(k, v)
    end
end

function arg_select(...)
    for i = 1, select("#", ...)
    do
        local v = select(i, ...)
        print(i, v)
    end
end

print("arg_ipairs(21, 22, 23, 24)")
arg_ipairs(21, 22, 23, 24)

print("arg_ipairs(21, 22, nil, 23, 24)")
arg_ipairs(21, 22, nil, 23, 24)

print("arg_pairs(21, 22, 23, 24)")
arg_pairs(21, 22, 23, 24)

print("arg_pairs(21, 22, nil, 23, 24)")
arg_pairs(21, 22, nil, 23, 24)

print("arg_select(21, 22, 23, 24)")
arg_select(21, 22, 23, 24)

print("arg_select(21, 22, nil, 23, 24)")
arg_select(21, 22, nil, 23, 24)
