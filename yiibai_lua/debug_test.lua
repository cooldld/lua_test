local function myfun()
    print(debug.traceback("stack trace start"))
    print(debug.getinfo(1))
    print("stack trace end")
    return 1
end

myfun()
print(debug.getinfo(1))
