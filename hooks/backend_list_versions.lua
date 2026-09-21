--- Lists available versions for a tool in this backend
--- Documentation: https://mise.jdx.dev/backend-plugin-development.html#backendlistversions
--- @param ctx {tool: string} Context (tool = the tool name requested)
--- @return {versions: string[]} Table containing list of available versions
function PLUGIN.BackendListVersions(_, ctx)
    local tool = ctx.tool
    if not tool or tool == "" then
        error("Tool name cannot be empty")
    end

    local cmd = require("cmd")
    local ok, result = pcall(cmd.exec, ("luarocks search --porcelain %s"):format(tool))
    if not ok then
        error(("Failed to fetch versions for %s: %s"):format(tool, result))
    end

    local versions = {}
    local seen = {}

    for line in result:gmatch("[^\r\n]+") do
        local pkg, version = line:match("^([^\t]+)\t([^\t]+)")
        if pkg == tool and version and not seen[version] then
            seen[version] = true
            versions[#versions + 1] = version
        end
    end

    if #versions == 0 then
        error(("No versions found for %s"):format(tool))
    end

    for i = 1, math.floor(#versions / 2) do
        local j = #versions - i + 1
        versions[i], versions[j] = versions[j], versions[i]
    end

    return { versions = versions }
end
