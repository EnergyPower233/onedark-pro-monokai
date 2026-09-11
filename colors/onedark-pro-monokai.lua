-- One Dark Pro Monokai Darker
-- 移植自 VSCode 主题 eser/vscode-one-dark-pro-monokai-darker
-- One Dark 语法配色 + Monokai 深色底

local M = {}

M.palette = {
  bg = "#121212", -- 编辑器背景
  bg_alt = "#181a1f", -- 侧栏/悬浮窗/非活动 tab
  bg_dark = "#020202", -- 标题栏/状态栏
  bg_activity = "#1d1f23", -- 活动栏/当前行高亮
  bg_sel = "#3e4451", -- 选区
  bg_sel_alt = "#2c313a", -- 补全选中项
  fg = "#bbbbbb", -- 默认前景
  fg_alt = "#abb2bf", -- 次要前景
  fg_muted = "#9da5b4", -- 状态栏文字
  cursor = "#f8f8f0",
  line_num = "#495162",
  whitespace = "#484a50",
  indent = "#3b4048",

  comment = "#5c6370",
  red = "#e06c75",
  orange = "#d19a66",
  yellow = "#e5c07b",
  green = "#98c379",
  cyan = "#56b6c2",
  blue = "#61afef",
  purple = "#c678dd",
}

M.hl = {
  -- 编辑器 UI
  Normal = { fg = "fg", bg = "bg" },
  NormalFloat = { fg = "fg", bg = "bg_alt" },
  FloatBorder = { fg = "bg_alt", bg = "bg_alt" },
  ColorColumn = { bg = "bg_activity" },
  Cursor = { fg = "bg", bg = "cursor" },
  CursorIM = { fg = "bg", bg = "cursor" },
  CursorLine = { bg = "bg_activity" },
  CursorColumn = { bg = "bg_activity" },
  CursorLineNr = { fg = "fg" },
  LineNr = { fg = "line_num" },
  SignColumn = { fg = "line_num" },
  Folded = { fg = "comment", bg = "bg_alt" },
  FoldColumn = { fg = "line_num" },
  Conceal = { fg = "comment" },
  Whitespace = { fg = "whitespace" },
  IndentBlanklineChar = { fg = "indent" },
  IndentBlanklineContextChar = { fg = "indent" },
  NonText = { fg = "whitespace" },
  EndOfBuffer = { fg = "bg" },
  SpecialKey = { fg = "whitespace" },
  WinSeparator = { fg = "bg_alt" },
  VertSplit = { fg = "bg_alt" },

  -- 搜索/选区
  Search = { fg = "bg", bg = "yellow" },
  IncSearch = { fg = "bg", bg = "orange" },
  CurSearch = { fg = "bg", bg = "orange" },
  Visual = { bg = "bg_sel" },
  VisualNOS = { bg = "bg_sel" },
  QuickFixLine = { bg = "bg_sel_alt" },

  -- 补全菜单
  Pmenu = { fg = "fg_alt", bg = "bg_alt" },
  PmenuSel = { fg = "fg", bg = "bg_sel_alt" },
  PmenuSbar = { bg = "bg_alt" },
  PmenuThumb = { bg = "line_num" },
  WildMenu = { fg = "fg", bg = "bg_sel_alt" },

  -- 状态栏
  StatusLine = { fg = "fg_muted", bg = "bg_dark" },
  StatusLineNC = { fg = "comment", bg = "bg_dark" },
  ModeMsg = { fg = "fg" },
  MsgArea = { fg = "fg" },
  MsgSeparator = { fg = "bg_alt" },
  MoreMsg = { fg = "blue" },
  Question = { fg = "blue" },
  WarningMsg = { fg = "yellow" },
  ErrorMsg = { fg = "red" },
  Directory = { fg = "blue" },
  Title = { fg = "green", bold = true },

  -- 标签页
  TabLine = { fg = "fg_muted", bg = "bg_alt" },
  TabLineSel = { fg = "fg", bg = "bg" },
  TabLineFill = { bg = "bg_alt" },

  -- 拼写
  SpellBad = { sp = "red", undercurl = true },
  SpellCap = { sp = "yellow", undercurl = true },
  SpellLocal = { sp = "cyan", undercurl = true },
  SpellRare = { sp = "purple", undercurl = true },

  -- Diff
  DiffAdd = { fg = "green", bg = "#0e282d" },
  DiffChange = { fg = "yellow", bg = "#314365" },
  DiffDelete = { fg = "red" },
  DiffText = { fg = "fg", bg = "#3e4451" },

  -- 诊断
  DiagnosticError = { fg = "red" },
  DiagnosticWarn = { fg = "yellow" },
  DiagnosticInfo = { fg = "blue" },
  DiagnosticHint = { fg = "cyan" },
  DiagnosticOk = { fg = "green" },
  DiagnosticUnderlineError = { sp = "red", undercurl = true },
  DiagnosticUnderlineWarn = { sp = "yellow", undercurl = true },
  DiagnosticUnderlineInfo = { sp = "blue", undercurl = true },
  DiagnosticUnderlineHint = { sp = "cyan", undercurl = true },
  DiagnosticUnderlineOk = { sp = "green", undercurl = true },
  DiagnosticVirtualTextError = { fg = "red" },
  DiagnosticVirtualTextWarn = { fg = "yellow" },
  DiagnosticVirtualTextInfo = { fg = "blue" },
  DiagnosticVirtualTextHint = { fg = "cyan" },
  DiagnosticSignError = { fg = "red" },
  DiagnosticSignWarn = { fg = "yellow" },
  DiagnosticSignInfo = { fg = "blue" },
  DiagnosticSignHint = { fg = "cyan" },

  -- 标准语法
  Comment = { fg = "comment", italic = true },
  Constant = { fg = "cyan" },
  String = { fg = "yellow" },
  Character = { fg = "yellow" },
  Number = { fg = "purple" },
  Boolean = { fg = "purple" },
  Float = { fg = "purple" },
  Identifier = { fg = "fg_alt" },
  Function = { fg = "green" },
  Statement = { fg = "red" },
  Conditional = { fg = "red" },
  Repeat = { fg = "red" },
  Label = { fg = "red" },
  Operator = { fg = "red" },
  Keyword = { fg = "red" },
  Exception = { fg = "red" },
  PreProc = { fg = "purple" },
  Include = { fg = "purple" },
  Define = { fg = "purple" },
  Macro = { fg = "purple" },
  PreCondit = { fg = "purple" },
  Type = { fg = "blue" },
  StorageClass = { fg = "cyan" },
  Structure = { fg = "cyan" },
  Typedef = { fg = "blue" },
  Special = { fg = "blue" },
  SpecialChar = { fg = "purple" },
  Tag = { fg = "red" },
  Delimiter = { fg = "fg" },
  SpecialComment = { fg = "comment", italic = true },
  Debug = { fg = "red" },
  Underlined = { fg = "blue", underline = true },
  Ignore = { fg = "comment" },
  Error = { fg = "cursor", bg = "red" },
  Todo = { fg = "purple", bold = true },

  -- Treesitter
  ["@comment"] = { fg = "comment", italic = true },
  ["@comment.documentation"] = { fg = "comment", italic = true },
  ["@string"] = { fg = "yellow" },
  ["@string.regex"] = { fg = "yellow" },
  ["@string.escape"] = { fg = "purple" },
  ["@string.special"] = { fg = "purple" },
  ["@character"] = { fg = "yellow" },
  ["@number"] = { fg = "purple" },
  ["@boolean"] = { fg = "purple" },
  ["@float"] = { fg = "purple" },
  ["@keyword"] = { fg = "red" },
  ["@keyword.function"] = { fg = "red" },
  ["@keyword.return"] = { fg = "red" },
  ["@keyword.operator"] = { fg = "red" },
  ["@keyword.import"] = { fg = "red" },
  ["@operator"] = { fg = "red" },
  ["@type"] = { fg = "blue" },
  ["@type.builtin"] = { fg = "cyan" },
  ["@type.definition"] = { fg = "blue" },
  ["@function"] = { fg = "green" },
  ["@function.builtin"] = { fg = "green" },
  ["@function.call"] = { fg = "fg_alt" },
  ["@function.method"] = { fg = "green" },
  ["@function.macro"] = { fg = "green" },
  ["@variable"] = { fg = "fg_alt" },
  ["@variable.builtin"] = { fg = "cyan" },
  ["@variable.member"] = { fg = "fg_alt" },
  ["@variable.parameter"] = { fg = "orange", italic = true },
  ["@property"] = { fg = "fg_alt" },
  ["@field"] = { fg = "fg_alt" },
  ["@constant"] = { fg = "cyan" },
  ["@constant.builtin"] = { fg = "cyan" },
  ["@constant.macro"] = { fg = "cyan" },
  ["@attribute"] = { fg = "green" },
  ["@namespace"] = { fg = "blue" },
  ["@constructor"] = { fg = "blue" },
  ["@tag"] = { fg = "red" },
  ["@tag.attribute"] = { fg = "green" },
  ["@tag.delimiter"] = { fg = "fg" },
  ["@punctuation"] = { fg = "fg" },
  ["@punctuation.bracket"] = { fg = "fg" },
  ["@punctuation.delimiter"] = { fg = "fg" },
  ["@punctuation.special"] = { fg = "purple" },
  ["@label"] = { fg = "red" },
  ["@error"] = { fg = "cursor", bg = "red" },
  ["@none"] = { fg = "fg" },

  -- LSP 语义高亮
  ["@lsp.type.class"] = { fg = "blue" },
  ["@lsp.type.enum"] = { fg = "blue" },
  ["@lsp.type.enumMember"] = { fg = "cyan" },
  ["@lsp.type.interface"] = { fg = "blue" },
  ["@lsp.type.struct"] = { fg = "blue" },
  ["@lsp.type.type"] = { fg = "blue" },
  ["@lsp.type.typeParameter"] = { fg = "blue" },
  ["@lsp.type.function"] = { fg = "green" },
  ["@lsp.type.method"] = { fg = "green" },
  ["@lsp.type.macro"] = { fg = "green" },
  ["@lsp.type.parameter"] = { fg = "orange", italic = true },
  ["@lsp.type.variable"] = { fg = "fg_alt" },
  ["@lsp.type.property"] = { fg = "fg_alt" },
  ["@lsp.type.keyword"] = { fg = "red" },
  ["@lsp.type.modifier"] = { fg = "red" },
  ["@lsp.type.comment"] = { fg = "comment", italic = true },
  ["@lsp.type.string"] = { fg = "yellow" },
  ["@lsp.type.number"] = { fg = "purple" },
  ["@lsp.type.boolean"] = { fg = "purple" },
  ["@lsp.type.operator"] = { fg = "red" },
  ["@lsp.type.namespace"] = { fg = "blue" },
  ["@lsp.type.decorator"] = { fg = "green" },
  ["@lsp.type.builtinType"] = { fg = "cyan" },
  ["@lsp.type.selfKeyword"] = { fg = "red" },

  -- Markdown
  ["@markup.heading"] = { fg = "red", bold = true },
  ["@markup.heading.1"] = { fg = "red", bold = true },
  ["@markup.heading.2"] = { fg = "red", bold = true },
  ["@markup.heading.3"] = { fg = "yellow", bold = true },
  ["@markup.heading.4"] = { fg = "green", bold = true },
  ["@markup.heading.5"] = { fg = "cyan", bold = true },
  ["@markup.heading.6"] = { fg = "blue", bold = true },
  ["@markup.link"] = { fg = "blue" },
  ["@markup.link.url"] = { fg = "blue", underline = true },
  ["@markup.raw"] = { fg = "cyan" },
  ["@markup.list"] = { fg = "red" },
  ["@markup.quote"] = { fg = "green" },
  ["@markup.strong"] = { bold = true },
  ["@markup.emphasis"] = { italic = true },
  ["@markup.strikethrough"] = { fg = "comment", strikethrough = true },
  ["@markup.underline"] = { underline = true },

  -- 其它插件常用
  GitSignsAdd = { fg = "green" },
  GitSignsChange = { fg = "yellow" },
  GitSignsDelete = { fg = "red" },
  GitSignsAddLn = { bg = "#0e282d" },
  GitSignsChangeLn = { bg = "#314365" },
  GitSignsDeleteLn = { bg = "#3e4451" },
  TroubleNormal = { bg = "bg_alt" },
  TroubleText = { fg = "fg" },
  TroubleCount = { fg = "purple" },
  TroubleLocation = { fg = "comment" },
}

-- 透明模式下这些组的背景会被清除（bg=NONE）
M.transparent_groups = {
  Normal = true,
  NormalFloat = true,
  FloatBorder = true,
  CursorLine = true,
  CursorColumn = true,
  ColorColumn = true,
  LineNr = true,
  SignColumn = true,
  FoldColumn = true,
  Folded = true,
  EndOfBuffer = true,
  NonText = true,
  WinSeparator = true,
  VertSplit = true,
  Pmenu = true,
  StatusLine = true,
  StatusLineNC = true,
  TabLine = true,
  TabLineFill = true,
  QuickFixLine = true,
}

function M.setup()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.g.colors_name = "onedark-pro-monokai"
  local transparent = vim.g.odpm_transparent == true
  for group, spec in pairs(M.hl) do
    local hi = {}
    if spec.fg then
      hi.fg = M.palette[spec.fg] or spec.fg
    end
    if spec.bg then
      if transparent and M.transparent_groups[group] then
        hi.bg = "NONE"
      else
        hi.bg = M.palette[spec.bg] or spec.bg
      end
    end
    if spec.sp then
      hi.sp = M.palette[spec.sp] or spec.sp
    end
    if spec.bold then
      hi.bold = true
    end
    if spec.italic then
      hi.italic = true
    end
    if spec.underline then
      hi.underline = true
    end
    if spec.undercurl then
      hi.undercurl = true
    end
    if spec.strikethrough then
      hi.strikethrough = true
    end
    vim.api.nvim_set_hl(0, group, hi)
  end
end

M.setup()

-- 终端调色板（Monokai 风格）
vim.g.terminal_color_0 = "#1d1f23"
vim.g.terminal_color_1 = "#e06c75"
vim.g.terminal_color_2 = "#98c379"
vim.g.terminal_color_3 = "#e5c07b"
vim.g.terminal_color_4 = "#61afef"
vim.g.terminal_color_5 = "#c678dd"
vim.g.terminal_color_6 = "#56b6c2"
vim.g.terminal_color_7 = "#abb2bf"
vim.g.terminal_color_8 = "#5c6370"
vim.g.terminal_color_9 = "#e06c75"
vim.g.terminal_color_10 = "#98c379"
vim.g.terminal_color_11 = "#e5c07b"
vim.g.terminal_color_12 = "#61afef"
vim.g.terminal_color_13 = "#c678dd"
vim.g.terminal_color_14 = "#56b6c2"
vim.g.terminal_color_15 = "#f8f8f0"

return M
