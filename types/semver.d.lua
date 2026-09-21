--- LuaCATS type definitions for mise vfox plugins
--- These annotations provide IDE support via lua-language-server.
--- See https://luals.github.io/wiki/annotations/

------------------------------------------------------------------------
-- Built-in semver modules (available via require)
------------------------------------------------------------------------

---@meta semver

---@class semver
---@field compare fun(v1: string, v2: string): integer Compare two version strings (-1, 0, 1)
---@field parse fun(version: string): integer[] Parse a version string into numeric parts
---@field sort fun(versions: string[]): string[] Sort version strings in ascending order
---@field sort_by fun(arr: table[], field: string): table[] Sort tables by a version field
local semver = {}

return semver
