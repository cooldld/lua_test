function recv ()
    local status, value = coroutine.resume(co_p)
    print("recv", value)
    return value
end

function send (x)
    print("send", x)
    coroutine.yield(x)
end

function producer ()
    while true
    do
        local x = io.read()
        send(x)
    end
end

function consumer ()
    while true
    do
        local x = recv()
        io.write(x, "\n")
    end
end

co_p = coroutine.create(producer)
co_c = coroutine.create(consumer)

--由消费者驱动
--coroutine.resume(co_p)
coroutine.resume(co_c)
