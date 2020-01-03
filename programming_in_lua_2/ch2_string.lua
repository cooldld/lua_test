page = [[
    <html>
    <head>
    <title>>An HTML Page</title>
    </html>
    </head>
]]
print(page)

page = [===[
    [[
    <html>
    <head>
    <title>>An HTML Page</title>
    </html>
    </head>
    ]]
    a=b[c[i]]
]===]
print(page)

--a as same as b
a = "alo\n123\""
print(a)

b = '\97lo\10\04923"'
print(b)

--string to number auto
print("10" + 3)
print("10" * "3")
print("10 * 3")
--print("hello" + 3)  --error, attempt to perform arithmetic on a string value

--number to string auto
print("10" .. 3)
print(10 .. 30)
