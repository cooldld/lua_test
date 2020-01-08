function bar ()
    print("hello bar")
    print(debug.traceback())
end

function foo ()
    print("hello foo")
    bar()
end

foo()
