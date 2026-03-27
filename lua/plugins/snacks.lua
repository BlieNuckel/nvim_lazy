return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          actions = {
            pick_win_open = function(picker, item, action)
              if not item then
                return
              end
              if item.dir then
                local Tree = require("snacks.explorer.tree")
                Tree:toggle(item.file)
                require("snacks.explorer.actions").update(picker, { refresh = true })
                return
              end
              local ok = Snacks.picker.actions.pick_win(picker, item, action or {})
              if not ok then
                Snacks.picker.actions.jump(picker, item, action or {})
              end
            end,
          },
          win = {
            list = {
              keys = {
                ["l"] = "pick_win_open",
              },
            },
          },
        },
      },
    },
  },
}
