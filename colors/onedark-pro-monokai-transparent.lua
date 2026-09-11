-- One Dark Pro Monokai Darker - 透明背景版
-- 临时开启透明开关，并通过 runtimepath 加载基础主题。
-- 这样无论使用 lazy.nvim、packer.nvim、vim-plug 还是手动安装都能正常工作。

local previous = vim.g.odpm_transparent

vim.g.odpm_transparent = true
vim.cmd("runtime colors/onedark-pro-monokai.lua")
vim.g.odpm_transparent = previous

vim.g.colors_name = "onedark-pro-monokai-transparent"
