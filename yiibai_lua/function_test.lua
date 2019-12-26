function max(a, b)
    if (a > b)
    then
        result = a
    else
        result = b
    end
    return result
end

print("max(1, 10)", max(1, 10))

function add_print(a, b, pf)
    pf(a, "+", b, "=", a + b)
end

add_print(1, 2, print)

function average(...)
    local arg = {...}
    for k, v in ipairs(arg)
    do
        print("k, v =", k, v)
    end
end

average(10, -1, 2, 9)
