return {
  {
    "NeogitOrg/neogit",
    cmd = "Neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    opts = {
      integrations = {
        diffview = true,
      },
      graph_style = "unicode",
    },
    init = function()
      vim.api.nvim_create_autocmd("User", {
        pattern = "LazyVimKeymaps",
        once = true,
        callback = function()
          local function map(lhs, rhs, desc)
            vim.keymap.set("n", lhs, rhs, { desc = desc })
          end
          map("<leader>gg", function()
            require("neogit").open({ cwd = LazyVim.root.git() })
          end, "Neogit (Root Dir)")
          map("<leader>gG", function()
            require("neogit").open()
          end, "Neogit (cwd)")
          map("<leader>gc", function()
            require("neogit").open({ "commit", cwd = LazyVim.root.git() })
          end, "Neogit Commit")
          map("<leader>gp", function()
            require("neogit").open({ "pull", cwd = LazyVim.root.git() })
          end, "Neogit Pull")
          map("<leader>gP", function()
            require("neogit").open({ "push", cwd = LazyVim.root.git() })
          end, "Neogit Push")
        end,
      })
    end,
  },
}
