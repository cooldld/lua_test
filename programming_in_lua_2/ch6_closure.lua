function new_counter()
    local i = 1
    return function ()
        i = i + 1
        return i
    end
end

counter_a = new_counter()
print("counter_a(), return", counter_a())
print("counter_a(), return", counter_a())
print("counter_a(), return", counter_a())

counter_b = new_counter()
print("counter_b(), return", counter_b())
print("counter_a(), return", counter_a())
print("counter_b(), return", counter_b())
