local path = "/usr/local/lib/libnanomsg.so"
local nn_bind = package.loadlib(path, "nn_bind")

print(nn_bind)

--load a error function
local nn_bindxx = package.loadlib(path, "nn_bindxx")
print(nn_bindxx)
