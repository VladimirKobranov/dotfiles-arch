-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.snacks_animate = false
vim.g.autoformat = false

local opt = vim.opt
opt.relativenumber = false

-- vim.opt.clipboard = "copyq"
-- vim.g.lazyvim_picker = "fzf"

vim.g.root_spec = { "cwd" }
