list = nil

print("please input lines for list")
for line in io.lines()
do
    if line == ""
    then
        print("input finish")
        break
    end

    list = {next = list, value = line}
end

print("\nread list")
local l = list
while l
do
    print(l.value)
    l = l.next
end
