function foo0()
end

function foo1()
    return "a"
end

function foo2()
    return "a", "b"
end

x, y = foo0()
print("\nx, y = foo0(), return", x, y)

x, y = foo1()
print("\nx, y = foo1(), return", x, y)

x, y = foo2()
print("\nx, y = foo2(), return", x, y)

x, y, z = foo2()
print("\nx, y, z = foo2(), return", x, y, z)

x = foo2()
print("\nx = foo2(), return", x)

x, y, z = 10, foo2()
print("\nx, y, z = 10, foo2(), return", x, y, z)

x, y, z = foo2(), 10
print("\nx, y, z = foo2(), 10, return", x, y, z)

print("\nfoo0() return", foo0())

print("\nfoo1() return", foo1())

print("\nfoo2() return", foo2())

print("\nfoo2(), 1 return", foo2(), 1)

print("\nfoo2()..x return", foo2().."x")

function foo2_a()
    return foo2()
end
print("\nfoo2_a() return", foo2_a())

function foo2_b()
    return foo2(), 1
end
print("\nfoo2_b() return", foo2_b())
