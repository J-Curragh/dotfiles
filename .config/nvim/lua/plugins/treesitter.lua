---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "markdown",
      "markdown_inline",
      "bash",
      "python",
      "javascript",
      "typescript",
      "tsx",
      "css",
      "scss",
      "html",
      "json",
      "yaml",
    },
  },
}
