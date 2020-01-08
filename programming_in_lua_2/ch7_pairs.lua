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
