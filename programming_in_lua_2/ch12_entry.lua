print("--The number of entries")
local count = 0
function Entry () count = count + 1 end
dofile("ch12_entry.data")
print("number of entries: " .. count)

print("\n--The name of entries")
local authors = {}
function Entry (b) authors[b[1]] = true end
dofile("ch12_entry.data")
for name in pairs(authors) do print(name) end
