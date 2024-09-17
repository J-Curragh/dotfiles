---@type LazySpec
return {
  -- One-offs
  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- Disable plugins (e.g.)
  -- { "max397574/better-escape.nvim", enabled = false },
}
