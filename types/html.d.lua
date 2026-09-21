--- LuaCATS type definitions for mise vfox plugins
--- These annotations provide IDE support via lua-language-server.
--- See https://luals.github.io/wiki/annotations/

------------------------------------------------------------------------
-- Built-in html modules (available via require)
------------------------------------------------------------------------

---@meta html

---@class HtmlNode
---@field find fun(self: HtmlNode, selector: string): HtmlNode Find descendant nodes matching a CSS selector
---@field first fun(self: HtmlNode): HtmlNode Get the first node
---@field eq fun(self: HtmlNode, idx: integer): HtmlNode Get node at zero-based index
---@field each fun(self: HtmlNode, fn: fun(idx: integer, node: HtmlNode)) Iterate over nodes
---@field text fun(self: HtmlNode): string Get the text content
---@field attr fun(self: HtmlNode, key: string): string Get an attribute value

---@class html
---@field parse fun(html_str: string): HtmlNode Parse an HTML string into a node tree
local html = {}

return html
