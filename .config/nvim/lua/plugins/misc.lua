---@type LazySpec
return {
  -- QOL improvements
  {
    "famiu/bufdelete.nvim",
    event = "VeryLazy",
    dependencies = {
      {
        "AstroNvim/astrocore",
        opts = {
          mappings = {
            n = {
              ["<leader>c"] = { function() require("bufdelete").bufdelete(0, false) end, desc = "Delete buffer" },
            },
          },
        },
      },
    },
    config = function()
      vim.api.nvim_set_keymap(
        "n",
        "<leader>c",
        ":lua require('bufdelete').bufdelete(0, false)<CR>",
        { noremap = true, silent = true, desc = "Delete buffer" }
      )
    end,
  },

  -- Disable plugins (e.g.)
  -- { "max397574/better-escape.nvim", enabled = false },
}
