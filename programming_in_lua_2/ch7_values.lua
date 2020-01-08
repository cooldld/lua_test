function values (t)
    local i = 0
    return function () i = i + 1; return t[i] end
end

t = {1, 3, 25, 87}

--demo1
for v in values(t)
do
    print(v)
end

print("")

--demo2
iterate = values(t)
for v in iterate
do
    print(v)
end
