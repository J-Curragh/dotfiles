return {
  {
    "supermaven-inc/supermaven-nvim",
    opts = {
      disable_keymaps = true,
      log_level = "off",
    },
    dependencies = {
      {
        "AstroNvim/astrocore",
        opts = {
          mappings = {
            i = {
              ["<C-e>"] = {
                function() require("supermaven-nvim.completion_preview").on_accept_suggestion() end,
                desc = "Accept suggestion",
              },
            },
          },
        },
      },
    },
  },
}
