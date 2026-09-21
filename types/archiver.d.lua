--- LuaCATS type definitions for mise vfox plugins
--- These annotations provide IDE support via lua-language-server.
--- See https://luals.github.io/wiki/annotations/

------------------------------------------------------------------------
-- Built-in archiver modules (available via require)
------------------------------------------------------------------------

---@meta archiver

---@class archiver
---@field decompress fun(archive: string, dest: string) Decompress an archive (.zip, .tar.gz, .tar.xz, .tar.bz2)
local archiver = {}

return archiver
