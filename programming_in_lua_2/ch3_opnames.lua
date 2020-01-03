opnames = {
    ["+"] = "add",
    ["-"] = "sub",
    ["*"] = "mul",
    ["/"] = "div",
    ["x"] = "*",
}

print(opnames["-"])
print(opnames.x)

i = 20
s = "-"
a = {
    [i + 0] = s,
    [i + 1] = s..s,
    [i + 2] = s..s..s,
}

print(a[22])

b = {x = 10, y = 20, z = 30; "one"; "two"; "three";}
--print(b.x)
--print(b.y)
--print(b.z)

print("\nipairs(b)")
for k, v in ipairs(b)
do
    print(k, v)
end

print("\npairs(b)")
for k, v in pairs(b)
do
    print(k, v)
end
