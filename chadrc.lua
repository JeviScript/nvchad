---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvchad",
  transparency = true,
  tabufline = {
    enabled = false,
  },
  lsp = {
    signature = {
      disabled = true
    }
  }
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
