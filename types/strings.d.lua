--- LuaCATS type definitions for mise vfox plugins
--- These annotations provide IDE support via lua-language-server.
--- See https://luals.github.io/wiki/annotations/

------------------------------------------------------------------------
-- Built-in strings modules (available via require)
------------------------------------------------------------------------

---@meta strings

---@class strings
---@field split fun(s: string, sep: string): string[] Split a string by separator
---@field has_prefix fun(s: string, prefix: string): boolean Check if string starts with prefix
---@field has_suffix fun(s: string, suffix: string): boolean Check if string ends with suffix
---@field trim fun(s: string, suffix: string): string Trim suffix from end of string
---@field trim_space fun(s: string): string Trim whitespace from both ends
---@field contains fun(s: string, substr: string): boolean Check if string contains substring
---@field join fun(arr: any[], sep: string): string Join array elements with separator
local strings = {}

return strings
