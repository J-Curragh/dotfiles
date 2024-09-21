-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`
local C = require "colours"

---@type LazySpec
return {
  "AstroNvim/astroui",
  dependencies = {
    {
      "ellisonleao/gruvbox.nvim",
      opts = {
        terminal_colors = true, -- add neovim terminal colors
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
          strings = true,
          emphasis = true,
          comments = true,
          operators = false,
          folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {
          SignColumn = { bg = "NONE" },
          CursorLineNr = { bg = "NONE" },
          FoldColumn = { bg = "NONE", fg = "#af3a03" },
        },
        dim_inactive = false,
        transparent_mode = false,
      },
    },
  },
  ---@type AstroUIOpts
  opts = {
    colorscheme = "gruvbox",
    -- Icons can be configured throughout the interface
    icons = {
      -- configure the loading of the lsp in the status line
      LSPLoading1 = "⠋",
      LSPLoading2 = "⠙",
      LSPLoading3 = "⠹",
      LSPLoading4 = "⠸",
      LSPLoading5 = "⠼",
      LSPLoading6 = "⠴",
      LSPLoading7 = "⠦",
      LSPLoading8 = "⠧",
      LSPLoading9 = "⠇",
      LSPLoading10 = "⠏",

      ActiveLSP = "",
      ActiveTS = " ",
      BufferClose = " ",
      DapBreakpoint = "",
      DapBreakpointCondition = "",
      DapBreakpointRejected = "",
      DapLogPoint = "",
      DapStopped = "",
      DefaultFile = "",
      Diagnostic = "",
      DiagnosticError = "",
      DiagnosticHint = "",
      DiagnosticInfo = "",
      DiagnosticWarn = "",
      Ellipsis = "",
      FileModified = "",
      FileReadOnly = "",
      FoldClosed = "",
      FoldOpened = "",
      FolderClosed = "",
      FolderEmpty = "",
      FolderOpen = "",
      Git = "",
      GitAdd = "",
      GitBranch = "",
      GitChange = "",
      GitConflict = "",
      GitDelete = "",
      GitIgnored = "",
      GitRenamed = "",
      GitStaged = "",
      GitUnstaged = "",
      GitUntracked = "",
      LSPLoaded = "",
      MacroRecording = "",
      Paste = "",
      Search = "",
      Selected = "",
      TabClose = "",
    },
    status = {
      colors = {
        tabline_bg = C.darkgrey,
      },
      separators = {
        breadcrumbs = "  ",
        path = "  ",
      },
    },
  },
}
