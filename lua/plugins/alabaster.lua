local fg = "#000000"

local colors = {
  const = { fg = "#6E3DC2", bg = "#F1ECF9" },
  string = { fg = "#59B55D", bg = "#EDF7ED" },
  comment = { fg = "#AD8D00", bg = "#FFFAE5" },
  type = { fg = "#007676", bg = "#E5F5F5" },
  keyword = { fg = "#7a7a7a" },
  definition = { fg = "#325CC0", bg = "#E8EEF9" },
  attribute = { fg = "#E65100", bg = "#FFF3E0" },
}

local highlight_groups = {
  Comment = colors.comment,
  ["@comment"] = { link = "Comment" },
  ["@comment.documentation"] = { link = "Comment" },
  ["@comment.todo"] = { fg = "#E65100", bg = "#FFF3E0", bold = true },
  ["@comment.note"] = { fg = "#2597F3", bg = "#E7F4FE", bold = true },
  ["@comment.warning"] = { fg = "#AD8D00", bg = "#FFFAE5", bold = true },
  ["@comment.error"] = { fg = "#C62828", bg = "#FFEBEE", bold = true },

  ["@function.definition"] = colors.definition,
  ["@variable.definition"] = colors.definition,
  ["@type.definition"] = colors.type,
  ["@lsp.mod.definition"] = colors.definition,
  ["@lsp.typemod.function.declaration"] = colors.definition,
  ["@lsp.typemod.function.definition"] = colors.definition,
  ["@lsp.typemod.method.declaration"] = colors.definition,
  ["@lsp.typemod.method.definition"] = colors.definition,
  ["@lsp.typemod.type.declaration"] = colors.type,
  ["@lsp.typemod.class.declaration"] = colors.type,
  ["@lsp.typemod.struct.declaration"] = colors.type,
  ["@lsp.typemod.interface.declaration"] = colors.type,
  ["@lsp.typemod.enum.declaration"] = colors.type,
  ["@lsp.typemod.variable.declaration"] = colors.definition,
  ["@lsp.typemod.parameter.declaration"] = colors.definition,

  ["@lsp.mod.readonly"] = { italic = false },
  ["@lsp.mod.static"] = { italic = true },

  String = colors.string,
  ["@string"] = colors.string,
  ["@string.regexp"] = colors.string,
  ["@string.escape"] = colors.string,
  ["@string.special"] = colors.string,
  ["@character"] = colors.string,
  ["@number"] = colors.string,
  ["@number.float"] = colors.string,
  Number = colors.string,
  Float = colors.string,

  Constant = colors.const,
  Boolean = colors.const,
  ["@constant"] = colors.const,
  ["@constant.builtin"] = colors.const,
  ["@constant.macro"] = colors.const,
  ["@boolean"] = colors.const,

  Keyword = colors.keyword,
  Statement = colors.keyword,
  Conditional = colors.keyword,
  Repeat = colors.keyword,
  Operator = colors.keyword,
  ["@keyword"] = colors.keyword,
  ["@keyword.function"] = colors.keyword,
  ["@keyword.operator"] = colors.keyword,
  ["@keyword.return"] = colors.keyword,
  ["@keyword.conditional"] = colors.keyword,
  ["@keyword.repeat"] = colors.keyword,
  ["@keyword.import"] = colors.keyword,
  ["@keyword.exception"] = colors.keyword,

  ["@attribute"] = colors.attribute,
  ["@attribute.builtin"] = colors.attribute,

  ["@variable.member"] = { fg = fg },
  ["@lsp.type.parameter"] = { fg = fg },
  ["@variable.parameter"] = { fg = fg },
  ["@property"] = { fg = fg },
  ["@lsp.type.property"] = { fg = fg },
  ["@property.yaml"] = { fg = fg },

  ["@function.call"] = { fg = fg, italic = false },
  ["@function.method.call"] = { fg = fg, italic = false },
  ["@lsp.type.function"] = { fg = fg },
  ["@lsp.type.method"] = { fg = fg },

  ["@punctuation.bracket"] = { fg = fg },
  ["@punctuation.delimiter"] = { fg = fg },
  ["@constructor"] = { fg = fg },
  Delimiter = { fg = fg },

  SnacksDashboardKey = { fg = colors.const.fg },
  SnacksDashboardDesc = { fg = fg },
  SnacksDashboardIcon = { fg = colors.keyword.fg },

  NeogitSubtleText = { fg = colors.keyword.fg },
  NeogitObjectId = { fg = colors.keyword.fg },
}

return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "dawn",
      styles = { italic = false },
      highlight_groups = highlight_groups,
    },
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.g.terminal_color_0 = "#000000"
      vim.g.terminal_color_8 = "#7a7a7a"
      vim.g.terminal_color_1 = "#C62828"
      vim.g.terminal_color_9 = "#C62828"
      vim.g.terminal_color_2 = "#59B55D"
      vim.g.terminal_color_10 = "#59B55D"
      vim.g.terminal_color_3 = "#AD8D00"
      vim.g.terminal_color_11 = "#AD8D00"
      vim.g.terminal_color_4 = "#000000"
      vim.g.terminal_color_12 = "#000000"
      vim.g.terminal_color_5 = "#6E3DC2"
      vim.g.terminal_color_13 = "#6E3DC2"
      vim.g.terminal_color_6 = "#007676"
      vim.g.terminal_color_14 = "#007676"
      vim.g.terminal_color_7 = "#000000"
      vim.g.terminal_color_15 = "#000000"
    end,
  },
  {
    "folke/tokyonight.nvim",
    enabled = false,
  },
}
