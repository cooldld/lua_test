mytable = {"apple", "orange", "banana"}

print("collectgarbage(count)", collectgarbage("count"))

mytable = nil

print("collectgarbage(count)", collectgarbage("count"))
print("collectgarbage(collect)", collectgarbage("collect"))
print("collectgarbage(count)", collectgarbage("count"))
