local cmp = require "cmp"

local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "svelte",
        -- "vue", "svelte",

        -- low level
        "c",
        "zig",
        "rust",
        "c_sharp",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.2",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      return require "custom.configs.telescope"
    end,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
  },
  {
    "Hoffs/omnisharp-extended-lsp.nvim",
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local config = require "plugins.configs.cmp"
      config.completion = {
        autocomplete = false,
      }
      config.sources = {
        { name = "nvim_lsp", priority = 1 },
        { name = "nvim_lua" },
        { name = "path" },
        { name = "luasnip" },
        { name = "buffer" },
      }
      config.sorting = {
        comparators = {
          cmp.config.compare.exact,
          cmp.config.compare.kind,
          cmp.config.compare.order,
        },
      }
      return config
    end,
  },
  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup {
        terminals = {
          shell = "nu",
          type_opts = {
            float = {
              relative = "editor",
              row = 0.3,
              col = 0.25,
              width = 1.0,
              height = 1.0,
              border = "single",
            },
          },
        },
      }
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "" },
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    opts = function()
      return require("custom.configs.others").blankline
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = function()
      return require "custom.configs.nvimtree"
    end,
  },
  {
    "numToStr/FTerm.nvim",
    config = function()
      require("FTerm").setup({
        border = 'single'
      })
    end
  },
}

return plugins
