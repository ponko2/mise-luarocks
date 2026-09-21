--- LuaCATS type definitions for mise vfox plugins
--- These annotations provide IDE support via lua-language-server.
--- See https://luals.github.io/wiki/annotations/

------------------------------------------------------------------------
-- Built-in json modules (available via require)
------------------------------------------------------------------------

---@meta json

---@class json
---@field encode fun(value: any): string Encode a value as JSON
---@field decode fun(str: string): any Decode a JSON string
local json = {}

return json
