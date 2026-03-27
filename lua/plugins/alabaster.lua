local colors = {
  fg = "#000000",
  const = { fg = "#6E3DC2", bg = "#F1ECF9" },
  string = { fg = "#59B55D", bg = "#EDF7ED" },
  comment = { fg = "#AD8D00", bg = "#FFFAE5" },
  type = { fg = "#007676", bg = "#E5F5F5" },
  keyword = { fg = "#7a7a7a" },
  definition = { fg = "#325CC0", bg = "#E8EEF9" },
  attribute = { fg = "#E65100", bg = "#FFF3E0" },
}

return {
  "folke/tokyonight.nvim",
  opts = {
    style = "day",
    on_colors = function(c)
      c.fg = "#000000"
      c.fg_dark = "#aaaaaa"
      c.bg = "#ffffff"
      c.bg_dark = "#ffffff"
      c.bg_float = "#ffffff"
      c.bg_statusline = "#ECEFF1"
      c.bg_gutter = "#000000"
      c.bg_sidebar = "#ffffff"
      c.bg_visual = "#e0e0e0"
    end,
    on_highlights = function(hl, c)
      -- Comments
      hl.Comment = colors.comment
      hl["@comment"] = { link = "Comment" }
      hl["@comment.documentation"] = { link = "Comment" }
      hl["@comment.todo"] = { fg = "#E65100", bg = "#FFF3E0", bold = true }
      hl["@comment.note"] = { fg = "#2597F3", bg = "#E7F4FE", bold = true }
      hl["@comment.warning"] = { fg = "#AD8D00", bg = "#FFFAE5", bold = true }
      hl["@comment.error"] = { fg = "#C62828", bg = "#FFEBEE", bold = true }

      -- Definitions (via custom TreeSitter queries and LSP semantic tokens)
      hl["@function.definition"] = colors.definition
      hl["@variable.definition"] = colors.definition
      hl["@type.definition"] = colors.type
      hl["@lsp.mod.declaration"] = colors.definition
      hl["@lsp.mod.definition"] = colors.definition
      hl["@lsp.typemod.function.declaration"] = colors.definition
      hl["@lsp.typemod.function.definition"] = colors.definition
      hl["@lsp.typemod.method.declaration"] = colors.definition
      hl["@lsp.typemod.method.definition"] = colors.definition
      hl["@lsp.typemod.type.declaration"] = colors.type
      hl["@lsp.typemod.class.declaration"] = colors.type
      hl["@lsp.typemod.struct.declaration"] = colors.type
      hl["@lsp.typemod.interface.declaration"] = colors.type
      hl["@lsp.typemod.enum.declaration"] = colors.type
      hl["@lsp.typemod.variable.declaration"] = colors.definition
      hl["@lsp.typemod.parameter.declaration"] = colors.definition

      -- Readonly/static modifiers
      hl["@lsp.mod.readonly"] = { italic = true }
      hl["@lsp.mod.static"] = { italic = true }

      -- Strings and literals
      hl.String = colors.string
      hl["@string"] = colors.string
      hl["@string.regexp"] = colors.string
      hl["@string.escape"] = colors.string
      hl["@string.special"] = colors.string
      hl["@character"] = colors.string
      hl["@number"] = colors.string
      hl["@number.float"] = colors.string
      hl.Number = colors.string
      hl.Float = colors.string

      -- Constants
      hl.Constant = colors.const
      hl.Boolean = colors.const
      hl["@constant"] = colors.const
      hl["@constant.builtin"] = colors.const
      hl["@constant.macro"] = colors.const
      hl["@boolean"] = colors.const

      -- Keywords
      hl.Keyword = colors.keyword
      hl.Statement = colors.keyword
      hl.Conditional = colors.keyword
      hl.Repeat = colors.keyword
      hl.Operator = colors.keyword
      hl["@keyword"] = colors.keyword
      hl["@keyword.function"] = colors.keyword
      hl["@keyword.operator"] = colors.keyword
      hl["@keyword.return"] = colors.keyword
      hl["@keyword.conditional"] = colors.keyword
      hl["@keyword.repeat"] = colors.keyword
      hl["@keyword.import"] = colors.keyword
      hl["@keyword.exception"] = colors.keyword

      -- Attributes/decorators
      hl["@attribute"] = colors.attribute
      hl["@attribute.builtin"] = colors.attribute

      -- Plain text elements
      hl["@lsp.type.parameter"] = { fg = c.fg }
      hl["@variable.parameter"] = { fg = c.fg }
      hl["@property"] = { fg = c.fg }
      hl["@lsp.type.property"] = { fg = c.fg }
      hl["@property.yaml"] = { fg = c.fg }

      hl["@punctuation.bracket"] = { fg = "#000000" }
      hl["@punctuation.delimiter"] = { fg = "#000000" }
      hl["@constructor"] = { fg = "#000000" }
      hl.Delimiter = { fg = "#000000" }

      hl.LspReferenceText = { bg = "#e9e9e9" }
      hl.LspReferenceRead = { bg = "#e9e9e9" }
      hl.LspReferenceWrite = { bg = "#e9e9e9" }

      hl.CursorLine = { bg = "#f5f5f5" }

      hl.FlashMatch = { fg = "#000000", bg = "#e0e0e0" }
      hl.FlashLabel = { fg = "#000000", bg = "#fce094", bold = true }
      hl.FlashCurrent = { fg = "#000000", bg = "#c8ddf0" }
    end,
  },
}
