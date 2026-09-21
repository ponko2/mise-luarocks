--- LuaCATS type definitions for mise vfox plugins
--- These annotations provide IDE support via lua-language-server.
--- See https://luals.github.io/wiki/annotations/

------------------------------------------------------------------------
-- Globals
------------------------------------------------------------------------

---@meta

---@class Runtime
---@field osType string Operating system type (e.g. "linux", "darwin", "windows")
---@field archType string Architecture type (e.g. "amd64", "arm64")
---@field version string Runtime version
---@field pluginDirPath string Path to the plugin directory
RUNTIME = {}

--- @deprecated Use RUNTIME.osType instead
---@type string
OS_TYPE = ""

--- @deprecated Use RUNTIME.archType instead
---@type string
ARCH_TYPE = ""
