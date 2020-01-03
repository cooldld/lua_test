local info={1,2,3,4,5,6}
local a,b,c,d,e,f=table.unpack(info)
print(a,b,c,d,e,f)

b = {x = 10, y = 20, z = 30; "one"; "two"; "three";}
print(table.unpack(b))
