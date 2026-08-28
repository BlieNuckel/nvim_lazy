return {
  {
    "mistweaverco/kulala.nvim",
    submodules = false,
    ft = { "http", "rest" },
    keys = {
      { "<leader>Ra", "<cmd>lua require('kulala').run_all()<cr>", desc = "Send all requests", ft = "http" },
      { "<leader>Rf", "<cmd>lua require('kulala').search()<cr>", desc = "Search requests", ft = "http" },
      { "<leader>Ro", "<cmd>lua require('kulala').open()<cr>", desc = "Open Kulala UI" },
      { "<leader>Rj", "<cmd>lua require('kulala').open_cookies_jar()<cr>", desc = "Open cookies jar" },
    },
    opts = {
      lsp = { enable = true },
    },
  },
}
