-- metadata.lua
-- Backend plugin metadata and configuration
-- Documentation: https://mise.jdx.dev/backend-plugin-development.html
PLUGIN = {
    name = "luarocks",
    depends = { "lua" },
    version = "0.1.0",
    description = "A mise backend plugin for luarocks tools",
    author = "Takahito Nakano",
    license = "MIT",
    homepage = "https://github.com/ponko2/mise-luarocks",
    notes = {
        "Requires luarocks to be installed on your system",
        "This plugin manages tools from the luarocks ecosystem",
    },
}
