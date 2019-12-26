co = coroutine.create(function(value1, value2)
    local temp3 = 10
    print("section 1,", value1, value2, temp3)

    local temp1 = coroutine.yield(value1 + 1, value2 + 1)
    temp3 = temp3 + value1
    print("section 2,", temp1, temp2, temp3)

    local temp1, temp2 = coroutine.yield(value1 + value2, value1 - value2)
    temp3 = temp3 + value1
    print("section 3,", temp1, temp2, temp3)
    return value2, "end"
end)

print("\n--coroutine.resume(co, 3, 2)")
print("main", coroutine.resume(co, 3, 2))

print("\n--coroutine.resume(co, 12, 14)")
print("main", coroutine.resume(co, 12, 14))

print("\n--coroutine.resume(co, 5, 6)")
print("main", coroutine.resume(co, 5, 6))

print("\n--coroutine.resume(co, 10, 20)")
print("main", coroutine.resume(co, 10, 20))
