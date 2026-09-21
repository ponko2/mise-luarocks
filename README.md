# mise-luarocks

[![CI](https://github.com/ponko2/mise-luarocks/actions/workflows/ci.yml/badge.svg)](https://github.com/ponko2/mise-luarocks/actions/workflows/ci.yml)

A mise plugin for installing [LuaRocks](https://luarocks.org/) packages as tools.

## Installation

```bash
mise plugin install luarocks https://github.com/ponko2/mise-luarocks
```

## Usage

This plugin allows you to install [LuaRocks](https://luarocks.org/) packages as tools using the `luarocks:package` format.

### Examples

```bash
# Install luacheck
mise install luarocks:luacheck@latest

# Use luacheck
mise x luarocks:luacheck -- luacheck --version

# Install specific version
mise install luarocks:luacheck@1.2.0-1

# List available versions
mise ls-remote luarocks:luacheck
```

## How it works

This plugin implements the vfox backend interface to:

1. **List versions**: Fetches available versions using `luarocks search`
2. **Install packages**: Uses `luarocks install` to install packages locally
3. **Set environment**: Adds `bin` to PATH for binary access

## Requirements

- [Lua](https://www.lua.org/) and [LuaRocks](https://luarocks.org/) must be installed on your system
- This plugin requires the latest version of mise with vfox backend support

## License

MIT
