--table init
mytable = {}
print("type(mytalbe)", type(mytable))

--table value assignment
mytable[1] = "aaa"
mytable["wow"] = "bbb"

--table type
mytable = nil
print("type(mytalbe)", type(mytable))

--lua garbage collection will take care of releasing memory

--表连接concat
print("--demo, table.concat()")
fruits = {"banana", "orange", "apple"}
print("concat(fruits)", table.concat(fruits))
print("concat(fruits, \", \")", table.concat(fruits, ", "))
print("concat(fruits, \", \", 2, 3)", table.concat(fruits, ", ", 2, 3))

--表插入insert
print("--demo, table.insert()")
fruits = {"banana", "orange", "apple"}
table.insert(fruits, "mango")
print("insert(fruits, mango)", table.concat(fruits, ", "))
table.insert(fruits, 2, "tomato")
print("insert(fruits, 2, tomato)", table.concat(fruits, ", "))

--表删除remove
print("--demo, table.remove()")
table.remove(fruits)
print("remove(fruits)", table.concat(fruits, ", "))
table.remove(fruits, 2)
print("remove(fruits, 2)", table.concat(fruits, ", "))

--表排序sort
print("--demo, table.sort()")
fruits = {"banana", "orange", "mango", "apple"}
for k, v in pairs(fruits)
do
    print(k, v)
end

table.sort(fruits)
print("sort(fruits):")
for k, v in pairs(fruits)
do
    print(k, v)
end
