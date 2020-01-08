a = {"aaa", "bbb", "ccc"}

co = coroutine.create(function ()
    for k, v  in pairs(a)
    do
        print("co", v)
        coroutine.yield()
    end
end)

print("\nresume 1")
print(coroutine.status(co))
print(coroutine.resume(co))
print(coroutine.status(co))

print("\nresume 2")
print(coroutine.status(co))
print(coroutine.resume(co))
print(coroutine.status(co))

print("\nresume 3")
print(coroutine.status(co))
print(coroutine.resume(co))
print(coroutine.status(co))

print("\nresume 4")
print(coroutine.status(co))
print(coroutine.resume(co))
print(coroutine.status(co))

print("\nresume 5")
print(coroutine.status(co))
print(coroutine.resume(co))
print(coroutine.status(co))
