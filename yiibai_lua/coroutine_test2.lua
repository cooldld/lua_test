function get_number()
    local function get_number_helper()
        co = coroutine.create(function()
            coroutine.yield(1)
            coroutine.yield(2)
            coroutine.yield(3)
            coroutine.yield(4)
            coroutine.yield(5)
        end)
        return co
    end

    if (number_helper)
    then
        status, number = coroutine.resume(number_helper)
        if (coroutine.status(number_helper) == "dead")
        then
            number_helper = get_number_helper()
            status, number = coroutine.resume(number_helper)
        end
        return number
    else
        number_helper = get_number_helper()
        status, number = coroutine.resume(number_helper)
        return number
    end
end

for i = 1, 10, 1
do
    print(i, get_number())
end
