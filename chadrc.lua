---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvchad",
  transparency = false,
  tabufline = {
    enabled = false,
  },
  lsp = {},
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"


return M
