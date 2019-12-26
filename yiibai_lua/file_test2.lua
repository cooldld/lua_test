--open a file in append mode
print("\n--open file in append mode")

file = io.open("hello.txt", "a")

print("type(file)", type(file))

--write st to this file
file:write("file:write hello world\n")

--close the open file
file:close(file)

--open a file in read
print("\n--open and read file")

file = io.open("hello.txt", "r")

--read and print this file
while (true)
do
    info = file:read()
    if (not info)
    then
        break
    end
    print(info)
end

--close the open file
file:close()

--io.tmpfile
print("\n--io.tmpfile")
fd = io.tmpfile()
print("io.type(fd)", io.type(fd))
fd:close()

--seek and read("*a")
print("\n--seek(end, -4) and read(*a)")
file = io.open("hello.txt", "r")
file:seek("end", -4)
print(file:read("*a"))
file:close()
