-- One Dark Pro Monokai Darker - 透明背景版
-- 开启透明开关后加载基础主题，背景组全部设为 NONE
vim.g.odpm_transparent = true
dofile(vim.fn.stdpath("config") .. "/colors/onedark-pro-monokai.lua")
vim.g.colors_name = "onedark-pro-monokai-transparent"
