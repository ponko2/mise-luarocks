--- LuaCATS type definitions for mise vfox plugins
--- These annotations provide IDE support via lua-language-server.
--- See https://luals.github.io/wiki/annotations/

------------------------------------------------------------------------
-- Built-in env modules (available via require)
------------------------------------------------------------------------

---@meta env

---@class env
---@field setenv fun(key: string, val: string) Set an environment variable
---@field getenv fun(key: string): string? Get an environment variable
local env = {}

return env
