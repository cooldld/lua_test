org_str = "Hello World"

dest = string.upper(org_str)
--print("upper()", org_str, "-->", dest)
print(string.format("upper(%s)=%s", org_str, dest))

dest = string.lower(org_str)
--print("upper()", org_str, "-->", dest)
print(string.format("lower(%s)=%s", org_str, dest))

dest = string.gsub(org_str, "ello", "i,")
--print("gsub()", org_str, "-->", dest)
print(string.format("gsub(%s, %s, %s)=%s", org_str, "ello", "i,", dest))

start_index, end_index = string.find(org_str, "llo")
--print("find() llo", org_str, "-->", start_index, end_index)
print(string.format("find(%s, %s)=%d, %d", org_str, "llo", start_index, end_index))

org_str = "Hello hello World"
start_index, end_index = string.find(org_str, "llo", 4)
--print("find() llo 4", org_str, "-->", start_index, end_index)
print(string.format("find(%s, %s, 4)=%d, %d", org_str, "llo", start_index, end_index))

org_str = "Hello World"
dest = string.reverse(org_str)
--print("reverse()", org_str, "-->", dest)
print(string.format("reverse(%s)=%s", org_str, dest))

dest = string.format("%04d.%02d.%02d", 2019, 12, 8)
--print("format()", 2019, 12, 8, "-->", dest)
print(string.format("2019, 12, 8=%s", dest))

dest = string.byte(org_str, 2)
--print("byte(), 2", org_str, "-->", dest)
print(string.format("byte(%s, 2)=%d", org_str, dest))

dest_char = string.char(dest)
--print("char()", dest, "-->", dest_char)
print(string.format("char(%d)=%s", dest, dest_char))

dest = string.len(org_str)
print(string.format("len(%s)=%d", org_str, dest))

dest = string.rep(org_str, 2)
print(string.format("rep(%s, 2)=%s", org_str, dest))

dest = org_str.." to all"
print(string.format("%s..\" to all\"=%s", org_str, dest))
