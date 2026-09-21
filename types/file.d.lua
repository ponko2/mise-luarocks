--- LuaCATS type definitions for mise vfox plugins
--- These annotations provide IDE support via lua-language-server.
--- See https://luals.github.io/wiki/annotations/

------------------------------------------------------------------------
-- Built-in file modules (available via require)
------------------------------------------------------------------------

---@meta file

---@class file
---@field read fun(path: string): string Read file contents
---@field exists fun(path: string): boolean Check if a file exists
---@field symlink fun(src: string, dst: string) Create a symbolic link
---@field join_path fun(...: string): string Join path components
local file = {}

return file
