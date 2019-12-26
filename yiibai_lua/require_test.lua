org_str = "Hello World"

require "string"
dest = string.upper(org_str)
print(string.format("string.upper(%s)=%s", org_str, dest))

local string_module = require "string"
dest = string_module.upper(org_str)
print(string_module.format("string_module.upper(%s)=%s", org_str, dest))

require "string"
local string_upper = string.upper
dest = string_upper(org_str)
print(string.format("string_upper(%s)=%s", org_str, dest))
