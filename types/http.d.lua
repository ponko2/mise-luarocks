--- LuaCATS type definitions for mise vfox plugins
--- These annotations provide IDE support via lua-language-server.
--- See https://luals.github.io/wiki/annotations/

------------------------------------------------------------------------
-- Built-in http modules (available via require)
------------------------------------------------------------------------

---@meta http

---@class HttpRequestOpts
---@field url string Request URL
---@field headers? table<string, string> HTTP headers

---@class HttpResponse
---@field status_code integer HTTP status code
---@field headers table<string, string> Response headers
---@field body string Response body (only for get, not head)

---@class http
---@field get fun(opts: HttpRequestOpts): HttpResponse Send a GET request
---@field head fun(opts: HttpRequestOpts): HttpResponse Send a HEAD request (no body)
---@field download_file fun(opts: HttpRequestOpts, path: string) Download a file to disk
local http = {}

return http
