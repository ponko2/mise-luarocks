--- LuaCATS type definitions for mise vfox plugins
--- These annotations provide IDE support via lua-language-server.
--- See https://luals.github.io/wiki/annotations/

------------------------------------------------------------------------
-- Built-in cmd modules (available via require)
------------------------------------------------------------------------

---@meta cmd

---@class CmdExecOpts
---@field cwd? string Working directory
---@field env? table<string, string> Environment variables
---@field timeout? integer Timeout in milliseconds

---@class cmd
---@field exec fun(command: string, opts?: CmdExecOpts): string Execute a shell command
local cmd = {}

return cmd
