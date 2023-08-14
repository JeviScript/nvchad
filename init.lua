local opt = vim.opt

opt.relativenumber = true
opt.signcolumn = "yes"

vim.api.nvim_create_autocmd("VimEnter", { command = "clearjumps" })
