--module after lua v5.2
mymath = require("mymath")

mymath.add(15, 5)
mymath.sub(15, 5)
mymath.mul(15, 5)
mymath.div(15, 5)

--[[
module before lua v5.1 and v5.0
require("mymath_seeall")

mymath_seeall.add(15, 5)
mymath_seeall.sub(15, 5)
mymath_seeall.mul(15, 5)
mymath_seeall.div(15, 5)
--]]
