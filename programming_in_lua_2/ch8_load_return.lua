print("enter your expression:")
local data = io.read()
local func = assert(load("return " .. data))
print("expression result " .. func())
