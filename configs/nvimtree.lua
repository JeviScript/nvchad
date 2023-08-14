local options = require "plugins.configs.nvimtree"

options.filters = {
  dotfiles = false,
  exclude = { vim.fn.stdpath "config" .. "/lua/custom", "node_modules" },
}

return options
