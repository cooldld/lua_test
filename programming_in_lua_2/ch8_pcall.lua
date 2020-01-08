local status, err = pcall(function () error({code = 121}) end)
print(status, err.code)

function foo ()
    print("hello foo")
    return "123", "abc"
end

print(pcall(foo))
