--一维数组
array = {"aaa", "bbb"}
print(array)
for i = 0, 2, 1
do
    print(string.format("array[%d]=%s", i, array[i]))
end

--数组index可以为负数
array = {}
for i = -2, 2, 1
do
    array[i] = i * 2
end

array[0] = nil

for i = -2, 2, 1
do
    print(string.format("array[%d]=%s", i, array[i]))
end

--多维数组
array = {{1, 2, 3}, {4, 5, 6}}
print(type(array))
for i = 1, 2, 1
do
    print(string.format("array[%d]=%s", i, array[i]))
    print(array[i])
end
