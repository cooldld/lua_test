function my_pairs (t)
    return next, t, nil
end

a = {"one", "two", "three"}

for i, v in my_pairs(a)
do
    print(i, v)
end

print("--demo2, call next")
for i, v in next, a
do
    print(i, v)
end

print("--demo3, pairs and nil")
a = {"one", nil, "two", nil, "three"}
for i, v in pairs(a)
do
    print(i, v)
end

print("--demo4, pairs and nil")
a = {one="111", xxx=nil, two="222", yyy=nil, three="333"}
for i in pairs(a)
do
    print(i)
end
