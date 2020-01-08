print("\ndata from resume call to create")
co = coroutine.create(function (a, b, c)
    print("co", a, b, c)
end)
print(coroutine.resume(co, 1, 2, 3))

print("\ndata from yield return to resume")
co = coroutine.create(function (a, b)
    coroutine.yield(a + b, a - b)
end)
print(coroutine.resume(co, 10, 3))

print("\ndata from resume call to yield")
co = coroutine.create(function ()
    print("co", coroutine.yield())
end)
coroutine.resume(co)
coroutine.resume(co, "hello", "world")

print("\ndata from coroutine return to resume")
co = coroutine.create(function ()
    return 6, 7
end)
print(coroutine.resume(co))
