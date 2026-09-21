--- LuaCATS type definitions for mise vfox plugins
--- These annotations provide IDE support via lua-language-server.
--- See https://luals.github.io/wiki/annotations/

------------------------------------------------------------------------
-- Built-in log modules (available via require)
------------------------------------------------------------------------

---@meta log

---@class log
---@field trace fun(...: any) Log at trace level
---@field debug fun(...: any) Log at debug level
---@field info fun(...: any) Log at info level
---@field warn fun(...: any) Log at warn level
---@field error fun(...: any) Log at error level
local log = {}

return log
