print("enter a number:")
n = io.read("*number")

if not n then print("invalid input") end

if not n then error("invalid input") end

print("enter a number:")
n = assert(io.read("*number"), "invalid input")
