--module before lua v5.1 and v5.0

module("mymath_seeall", package.seeall)

function mymath_seeall.add(a, b)
    print(a + b)
end

function mymath_seeall.sub(a, b)
    print(a - b)
end

function mymath_seeall.mul(a, b)
    print(a * b)
end

function mymath_seeall.div(a, b)
    print(a / b)
end
