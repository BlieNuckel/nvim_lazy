local ignore_filetypes = {
  "snacks_picker_list",
  "snacks_layout_box",
  "snacks_terminal",
  "neo-tree",
  "notify",
}

local ignore_buftypes = {
  "terminal",
}

local function win_filter(win, buf)
  buf = buf or vim.api.nvim_win_get_buf(win)
  local ft = vim.bo[buf].filetype
  for _, ignored in ipairs(ignore_filetypes) do
    if ft == ignored then
      return false
    end
  end
  local bt = vim.bo[buf].buftype
  for _, ignored in ipairs(ignore_buftypes) do
    if bt == ignored then
      return false
    end
  end
  return true
end

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
              local normal_wins = vim.tbl_filter(win_filter, vim.api.nvim_tabpage_list_wins(0))

              if #normal_wins <= 1 then
                Snacks.picker.actions.jump(picker, item, action or {})
              else
                local win = Snacks.picker.util.pick_win({
                  main = picker.main,
                  filter = win_filter,
                })
                if win then
                  picker.main = win
                end
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
