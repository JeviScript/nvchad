local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
local lspconfig = require "lspconfig"

local servers = {
  "html",
  "cssls",
  "rust_analyzer",
  "lua_ls",
  "jsonls",
  "svelte",
  "tsserver",
  "custom_elements_ls",
  "terraformls",
}

-- local project_library_path = "/home/eldakar/.nvm/versions/node/v14.21.3/lib/node_modules"
-- local cmd = {"ngserver", "--stdio", "--tsProbeLocations", project_library_path , "--ngProbeLocations", project_library_path}
--
-- require'lspconfig'.angularls.setup{
--   cmd = cmd,
--   on_attach = on_attach,
--   capabilities = capabilities,
--   on_new_config = function(new_config,new_root_dir)
--     new_config.cmd = cmd
--   end,
-- }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
    handlers = {
      ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
        underline = false,
        signs = true,
      }),
    },
  }
end

lspconfig.omnisharp.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "omnisharp", "--languageserver" },
  handlers = {
    ["textDocument/definition"] = require("omnisharp_extended").handler,
    ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
      virtual_text = false,
      underline = false,
      signs = true,
    }),
  },
}

lspconfig.prismals.setup {}
