--open a file in append mode
print("\n--open file in append mode")

file = io.open("hello.txt", "a")

print("type(file)", type(file))

--set the default output file as this file
io.output(file)

--write st to this file
io.write("io.write hello world\n")

--close the open file
io.close(file)

--open a file in read
print("\n--open and read file")

file = io.open("hello.txt", "r")

--set the default input file as this file
io.input(file)

--read and print this file
while (true)
do
    info = io.read()
    if (not info)
    then
        break
    end
    print(info)
end

--close the open file
io.close(file)

--io.tmpfile
print("\n--io.tmpfile")
fd = io.tmpfile()
print("io.type(fd)", io.type(fd))
io.close(fd)
