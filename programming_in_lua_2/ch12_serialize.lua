function serialize (o)
    if type(o) == "number" then
        io.write(o)
    elseif type(o) == "string" then
        io.write(string.format("%q", o))
    elseif type(o) == "table" then
        io.write("{\n")
        for k, v in pairs(o) do
            io.write(" ", k, " = ")
            serialize(v)
            io.write(",\n")
        end
        io.write("}\n")
    else
        error("can not serialize a " .. type(o))
    end
end

function serialize2 (o)
    if type(o) == "number" then
        io.write(o)
    elseif type(o) == "string" then
        io.write(string.format("%q", o))
    elseif type(o) == "table" then
        io.write("{\n")
        for k, v in pairs(o) do
            --io.write(" ", k, " = ")
            io.write(" [")
            serialize(k)
            io.write("] = ")
            serialize(v)
            io.write(",\n")
        end
        io.write("}\n")
    else
        error("can not serialize a " .. type(o))
    end
end

print("serialize")
serialize{a=12, b='Lua', key='other "one"'}

print("\nserialize2")
serialize2{a=12, b='Lua', key='other "one"'}
