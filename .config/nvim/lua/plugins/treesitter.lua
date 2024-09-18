---@type LazySpec
return {
  {
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
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = {
      enable = true,
      min_window_height = 25,
      line_numbers = true,
    },
    config = function(_, opts)
      local ok, context = pcall(require, "treesitter-context")
      if not ok then return end

      context.setup(opts)
      vim.api.nvim_set_keymap(
        "n",
        "[c",
        "<cmd>lua require('treesitter-context').go_to_context(vim.v.count1)<cr>",
        { noremap = true, silent = true, desc = "Previous context" }
      )
    end,
  },
}
