a = {}

for i = 1, 10
do
    a[i] = i * 2
end

for i = 1, 10
do
    print(i, a[i])
end

print(#a)

a = {}
a[1] = 1
a[2] = 2
a[3] = 3
print(#a)

a[2] = nil
print(#a)

a = {}
a[0] = 0
a[3] = 3
a[4] = 4
a[5] = 5
print(#a)

--output nothing
for k, v in pairs(a)
do
    print(k, v)
end
