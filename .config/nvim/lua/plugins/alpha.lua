return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local theta = require "alpha.themes.theta"
    local dashboard = require "alpha.themes.dashboard"
    dashboard.leader = vim.g.mapleader
    theta.file_icons.provider = "devicons"
    theta.config.layout = {
      { type = "padding", val = 2 },
      {
        type = "text",
        val = {
          [[        ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣤⣤⣶⣶⣶⣶⣶⣤⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⠟⢋⣥⣶⣶⣶⣦⡉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⢸⣿⣿⣿⣿⡿⠃⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣤⣄⣀⣉⣉⣠⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⠟⣉⣈⠹⣿⣿⠟⠉⠀⠀⠀⠀⠀⣿⠛⠋⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⣿⢏⣾⣿⣿⢧⡟⠁⠀⠀⠀⠀⠀⢀⡴⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣧⡀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⢠⡟⠸⣿⡿⢏⣼⣧⣄⣀⣀⣀⣤⠶⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⢸⣷⣄⣀⣤⣾⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⡤⢤⡴⠖⠒⠒⠲⠶⠶⠶⠤⠤⢤⣄⣀⣀⡀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣽⡟⣿⣿⣿⣿⣿⣿⡄]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠴⠒⠋⠉⠀⠈⠳⢼⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⢸⠉⠙⠓⠒⠦⢤⣄⡀⠈⢻⡏⣿⣿⣿⣿⣿⣿⣿⣿]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⢀⣤⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢯⡿⠋⠉⣉⣩⣭⣭⣁⡘⢿⡀⠘⡄⠀⠀⢠⠤⠤⣌⠙⠲⣌⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⠀⠀⠀⠀⠀⢀⡴⠋⣹⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠤⢤⣙⣲⣞⣉⡤⠶⢤⣌⠙⣶⢳⣨⡇⠀⢰⠋⢀⠤⣌⠳⡀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⠀⠀⠀⠀⣠⢿⡁⠀⢸⠘⣆⠀⠸⡟⢦⣄⠀⠀⠀⠈⣧⠀⠀⣿⠁⡏⠀⣤⡄⠈⣆⡍⠀⢻⠻⡄⢸⠀⡏⠀⠈⢳⣷⡀⠀⠈⢿⣿⣿⣿⣿⣿⣿]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣇⠀⠀⠀⣰⠃⠀⣿⠀⢸⡟⠿⣦⠀⡇⠀⠉⠳⢦⡀⠀⠘⡆⠀⢻⠀⠳⣀⠈⣀⣤⠟⢁⣀⣠⠤⢽⣼⢸⠀⠀⢧⠈⠈⣿⣿⣶⣶⣿⣿⣿⣿⣿⣿]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⢰⠏⠀⣸⠟⢳⣸⣇⣀⣈⣧⣿⠰⣄⠀⠀⠙⠳⣤⡹⡆⠈⠀⠀⠊⠉⠁⠐⠚⠉⠀⠀⠀⠀⠋⠀⣷⣤⠞⠀⢸⡃⢻⣿⣿⣿⣿⣿⣿⣿⣿]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⠀⠀⡟⠀⢰⡇⠀⠀⡿⠟⢉⡬⠿⢿⣦⡈⠑⣄⠀⠀⠀⠙⠻⠆⠀⠀⠀⠀⠀⠀⠀⣀⣀⣠⣤⢤⣀⣀⢸⠁⠀⢀⠿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡇⢸⡇⢀⡏⣷⠀⢸⡇⠀⣿⠀⢠⡄⠹⡇⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣀⣠⠞⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣸⠧⣼⠁⣿⡆⠈⠷⣄⠙⣦⣀⣤⠞⠁⠀⠘⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠒⠒⠒⠒⠢⠤⣸⣿⡀⠸⣟⣺⡧⠉⠙⠛⠛⣿⠿⠿⠿]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠀⣸⣆⣿⢿⡄⠀⠀⠈⠉⣉⠀⠀⠀⠀⠀⠙⠦⡀⠉⠀⠀⠀⠀⠀⠀⠀⣰⠆⠀⠀⠀⠀⠀⠀⠀⣸⣩⠷⠚⠉⠁⡇⠀⠀⠀⠀⡏⠀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢰⠋⠘⢿⢦⡿⣄⣠⠖⠉⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠤⠒⠋⠀⠀⠀⠀⠀⠀⣀⡴⠚⠉⠀⠀⠀⠀⠀⠇⠀⠀⠀⠀⣧⠀⠀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠏⠀⠀⠘⣇⢹⢿⣇⠀⢀⡴⠉⠀⢠⠀⠀⠀⠀⢀⣠⠔⠊⠉⠀⠀⠀⠀⠀⠀⢀⡠⠖⠋⠁⠀⠀⣀⣤⣶⠀⠀⢸⣒⠒⠒⠲⣦⡘⢦⡀⠀]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡾⠀⠙⢷⣏⠀⠀⢠⠏⠀⠀⠘⠊⠁⠀⠀⠀⠀⠀⠀⠀⣀⠴⠚⠁⠀⠀⣀⣤⣶⣿⣿⣿⡟⠀⠀⣾⣩⡟⣆⠀⠀⠙⢷⡉⠓]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠃⠀⠀⠀⠙⢦⡀⡎⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⠖⠋⠁⠀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⠃⠀⢰⡟⣿⡿⣿⠀⠀⠀⠀⠙⠢]],
          [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢧⣄⠀⠀⠀⠀⠀⠀⢀⡴⠋⠁⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀⢀⡾⠀⠈⢛⡇⠀⠀⠀⠀⠀⠀]],
        },
        opts = {
          position = "center",
          hl = "Type",
          -- wrap = "overflow";
        },
      },
      { type = "text", val = "  " .. os.date "%A, %B %d, %Y", opts = { hl = "Type", position = "center" } },
      { type = "padding", val = 1 },
      {
        type = "group",
        val = {
          dashboard.button("<leader> fz", "  Projects", "<Cmd>Telescope zoxide list<CR>"),
          dashboard.button("<leader> e", "  Open Filetree", "<Cmd>Neotree<CR>"),
        },
        position = "center",
      },
    }

    -- If Neovim starts with the Lazy plugin window open (filetype lazy),
    -- this section will close it, wait for Alpha to be ready, then reopen it
    if vim.o.filetype == "lazy" then
      vim.cmd.close()
      vim.api.nvim_create_autocmd("User", {
        pattern = "AlphaReady",
        callback = function() require("lazy").show() end,
      })
    end

    require("alpha").setup(theta.config)

    -- Open alpha when all buffers are closed
    vim.api.nvim_create_augroup("alpha_on_empty", { clear = true })
    vim.api.nvim_create_autocmd("User", {
      pattern = "BDeletePre *",
      group = "alpha_on_empty",
      callback = function()
        local bufnr = vim.api.nvim_get_current_buf()
        local name = vim.api.nvim_buf_get_name(bufnr)

        if name == "" then vim.cmd [[:Alpha | bd#]] end
      end,
    })
  end,
}
