local M = {}

M.lspconfig = {
  n = {
    ["gr"] = {
      function()
        require("telescope.builtin").lsp_references()
      end,
      "LSP references",
    },
    ["<leader>q"] = {
      function()
        require("telescope.builtin").diagnostics()
      end,
      "Diagnostic setloclist",
    },

    ["gs"] = {
      function()
        require("telescope.builtin").lsp_document_symbols()
      end,
      "Document symbols in the current buffer",
    },
  },
}

M.nvimtree = {
  n = {
    ["<leader>ms"] = {
      function()
        require("nvim-tree.api").marks.navigate.select()
      end,
    },
    ["<leader>mn"] = {
      function()
        require("nvim-tree.api").tree.focus()
        require("nvim-tree.api").marks.navigate.next()
        require("nvim-tree.api").tree.toggle()
      end,
    },
    ["<leader>mp"] = {
      function()
        require("nvim-tree.api").tree.focus()
        require("nvim-tree.api").marks.navigate.prev()
        require("nvim-tree.api").tree.toggle()
      end,
    },
  },
}

M.telescope = {
  n = {
    ["<leader>fp"] = {
      function()
        require("telescope.builtin").resume()
      end,
      "Opens previous telescope search",
    },
  },
}

M.general = {
  n = {
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" }
  }
}

return M
