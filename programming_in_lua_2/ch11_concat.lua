local t = {}
for line in io.lines() do
    --if string.len(line) == 0 then break end
    t[#t + 1] = line
end

t[#t + 1] = ""

s = table.concat(t)
print(s)

s = table.concat(t, "\n")
print(s)
