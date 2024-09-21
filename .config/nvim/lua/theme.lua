local C = require "colours"

-- glow in the dark gucci shark bites theme (attempt 1)
return { -- a table of overrides/changes when applying the astrotheme theme
  -- Cursor
  Cursor = { fg = C.black, bg = C.cream },
  Visual = { fg = C.none, bg = C.grey },
  CursorLine = { fg = C.none, bg = C.grey },

  -- Window
  CursorColumn = { fg = C.none, bg = C.grey },
  ColorColumn = { fg = C.none, bg = C.grey },
  LineNr = { fg = C.lightgrey, bg = C.none },
  NonText = { fg = C.lightgrey, bg = C.black },
  TabLine = { fg = C.none, bg = C.black },
  StatusLine = { fg = C.cream, bg = C.darkgrey },
  StatusLineNC = { fg = C.cream, bg = C.darkgrey },

  -- Non language-specific text
  Normal = { fg = C.cream, bg = C.black },
  NormalNC = { fg = C.lightgrey, bg = C.none },
  MatchParen = { fg = C.pink, bg = C.none },
  Special = { fg = C.cream, bg = C.none },
  SpecialKey = { fg = C.lightgrey, bg = C.black },

  -- Window
  WinSeparator = { fg = C.pink, bg = C.none },
  SignColumn = { fg = C.none, bg = C.none },
  Title = { fg = C.blue, bg = C.none },

  -- NeoTree
  NeoTreeNormal = { fg = C.cream, bg = C.darkgrey },
  NeoTreeNormalNC = { fg = C.cream, bg = C.darkgrey },
  NeoTreeEndOfBuffer = { fg = C.none, bg = C.none },
  NeoTreeTabActive = { fg = C.pink, bold = true, italic = true },

  -- nvim-cmp
  Pmenu = { fg = C.none, bg = C.none },
  PmenuSel = { fg = C.none, bg = C.lightgrey },
  NormalFloat = { bg = C.black },
  FloatBorder = { fg = C.pink, bg = C.none },
  FloatShadow = { bg = C.black },
  FloatShadowThrough = { bg = C.black },

  -- Search
  IncSearch = { fg = C.black, bg = C.violet },
  Search = { fg = C.black, bg = C.violet },

  -- Folds
  Folded = { fg = C.none, bg = C.darkgrey },
  FoldColumn = { fg = C.yellow, bg = C.none },

  -- === Tree-sitter ===
  -- primitives
  Boolean = { fg = C.violet, bg = C.none },
  Character = { fg = C.violet, bg = C.none },
  Float = { fg = C.violet, bg = C.none },
  Number = { fg = C.violet, bg = C.none },
  String = { fg = C.yellow, bg = C.none },
  -- language features
  Comment = { fg = C.lightgrey, bg = C.none },
  Conditional = { fg = C.pink, bg = C.none },
  Constant = { fg = C.none, bg = C.none },
  Define = { fg = C.pink, bg = C.none },
  Function = { fg = C.limegreen, bg = C.none },
  Identifier = { fg = C.blue, bg = C.none },
  Keyword = { fg = C.pink, bg = C.none },
  Label = { fg = C.yellow, bg = C.none },
  Type = { fg = C.pink, bg = C.none },
  Tag = { fg = C.pink, bg = C.none },
  Operator = { fg = C.cyan, bg = C.none },
  PreProc = { fg = C.pink, bg = C.none },
  Include = { fg = C.pale_red, italic = true },
  Statement = { fg = C.pink, bg = C.none },
  Repeat = { fg = C.purple, bg = C.none, italic = true }, -- for, do, while, etc.
  Exception = { fg = C.purple, bg = C.none, italic = true }, -- try, catch, throw
  StorageClass = { fg = C.limegreen, bg = C.none },
  Todo = { fg = C.fadedblue, bg = C.none },

  -- Git diffs
  DiffAdd = { fg = C.cream, bg = C.darkgreen },
  DiffDelete = { fg = C.darkred, bg = C.none },
  DiffChange = { fg = C.cream, bg = C.darkerblue },
  DiffText = { fg = C.cream, bg = C.darkblue },

  -- LSP
  ErrorMsg = { fg = C.cream, bg = C.pink },
  WarningMsg = { fg = C.cream, bg = C.pink },
  DiagnosticFloatingOk = { link = "DiagnosticOk" },
  DiagnosticFloatingError = { link = "DiagnosticError" },
  DiagnosticFloatingWarn = { link = "DiagnosticWarn" },
  DiagnosticFloatingInfo = { link = "DiagnosticInfo" },
  DiagnosticFloatingHint = { link = "DiagnosticHint" },
  DiagnosticVirtualTextHint = { fg = C.white, bg = C.none },
  DiagnosticVirtualTextWarn = { fg = C.equator, bg = C.none },
  DiagnosticVirtualTextInfo = { fg = C.wild_willow, bg = C.none },
  QuickFixLine = { fg = C.white },

  TreesitterContextLineNumber = { fg = C.pale_red, bg = C.black },
  TelescopeSelection = { fg = C.violet, bg = C.surface1 },
  IlluminatedWordText = { fg = C.none, bg = C.surface1 },
  IlluminatedWordRead = { fg = C.none, bg = C.surface1 },
  IlluminatedWordWrite = { fg = C.none, bg = C.surface1 },
  ["@lsp.typemod.function.global"] = { fg = C.blue },
  ["@method"] = { fg = C.cyan, bg = C.none },
  ["@function.method.call.lua"] = { link = "@method" },
  ["@lsp.type.class"] = { fg = C.blue },
  ["@lsp.type.namespace.python"] = { link = "Identifier" },
  ["@lsp.type.parameter.python"] = { link = "Hlargs" },
  ["@lsp.type.parameter.go"] = { link = "Hlargs" },
  ["@function.builtin"] = { fg = C.blue },
  ["@variable.builtin"] = { fg = C.red },
}
