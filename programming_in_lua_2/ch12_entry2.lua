print("--The number of entries")
local count = 0
function Entry () count = count + 1 end
dofile("ch12_entry2.data")
print("number of entries: " .. count)

print("\n--The name of entries")
local authors = {}
function Entry (b)
    if b.author then authors[b.author] = true end
end
dofile("ch12_entry2.data")
for name in pairs(authors) do print(name) end
