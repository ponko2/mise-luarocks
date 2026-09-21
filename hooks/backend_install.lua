--- Installs a specific version of a tool
--- Documentation: https://mise.jdx.dev/backend-plugin-development.html#backendinstall
--- @param ctx {tool: string, version: string, install_path: string} Context
--- @return table Empty table on success
function PLUGIN.BackendInstall(_, ctx)
    local tool = ctx.tool
    local version = ctx.version
    local install_path = ctx.install_path

    if not tool or tool == "" then
        error("Tool name cannot be empty")
    end
    if not version or version == "" then
        error("Version cannot be empty")
    end
    if not install_path or install_path == "" then
        error("Install path cannot be empty")
    end

    local cmd = require("cmd")
    local ok, result = pcall(cmd.exec, ("luarocks --tree %s install %s %s"):format(install_path, tool, version))
    if not ok then
        error(("Failed to install %s@%s: %s"):format(tool, version, result))
    end

    return {}
end
