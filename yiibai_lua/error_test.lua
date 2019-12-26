local function add(a, b)
    if not(type(a) == "number")
    then
        error("a is not a number")
    end
    if not(type(b) == "number")
    then
        error("b is not a number", 2)
    end
    return a + b
end

add(10)
