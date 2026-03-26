return {
  "folke/tokyonight.nvim",
  opts = {
    style = "day",
    on_colors = function(c)
      c.fg = "#1a1a1a"
      c.fg_dark = "#6a6a6a"
      c.bg = "#ffffff"
      c.bg_dark = "#ffffff"
      c.bg_float = "#ffffff"
      c.bg_statusline = "#ffffff"
      c.bf_gutter = "#1f1f1f"
      c.bg_sidebar = "#ffffff"
      c.bg_visual = "#e0e0e0"
    end,
    on_highlights = function(hl, c)
      -- Comments: yellow
      hl.Comment = { fg = "#b8a000", bg = "#faf5d0" }
      hl["@comment"] = { link = "Comment" }

      -- Top-level definitions: light blue
      hl["@function"] = { fg = "#5ba2d0", bg = "#ddeef8" }
      -- hl["@function.call"] = { fg = "#5ba2d0", bg = "#ddeef8" }
      -- hl["@variable"] = { fg = "#5ba2d0", bg = "#ddeef8" }
      hl["@lsp.type.function"] = { fg = "#5ba2d0", bg = "#ddeef8" }
      hl["@lsp.type.variable"] = { fg = "#5ba2d0", bg = "#ddeef8" }
      hl.Function = { fg = "#5ba2d0", bg = "#ddeef8" }
      hl.Identifier = { fg = "#5ba2d0", bg = "#ddeef8" }

      -- Strings: light green
      hl.String = { fg = "#5a9a5a", bg = "#ddf0dd" }
      hl["@string"] = { fg = "#5a9a5a", bg = "#ddf0dd" }

      -- Constants and numbers: purple
      hl.Constant = { fg = "#9876aa", bg = "#ece4f4" }
      hl.Number = { fg = "#9876aa", bg = "#ece4f4" }
      hl.Boolean = { fg = "#9876aa", bg = "#ece4f4" }
      hl.Float = { fg = "#9876aa", bg = "#ece4f4" }
      hl["@constant"] = { fg = "#9876aa", bg = "#ece4f4" }
      hl["@number"] = { fg = "#9876aa", bg = "#ece4f4" }
      hl["@boolean"] = { fg = "#9876aa", bg = "#ece4f4" }

      -- Keywords: gray (subdued)
      hl.Keyword = { fg = "#8a8a8a" }
      hl.Statement = { fg = "#8a8a8a" }
      hl.Conditional = { fg = "#8a8a8a" }
      hl.Repeat = { fg = "#8a8a8a" }
      hl.Operator = { fg = "#8a8a8a" }
      hl["@keyword"] = { fg = "#8a8a8a" }
      hl["@keyword.function"] = { fg = "#8a8a8a" }
      hl["@keyword.return"] = { fg = "#8a8a8a" }
      hl["@keyword.operator"] = { fg = "#8a8a8a" }
      hl["@conditional"] = { fg = "#8a8a8a" }
      hl["@repeat"] = { fg = "#8a8a8a" }
      hl["@operator"] = { fg = "#8a8a8a" }

      hl["@lsp.type.parameter"] = { fg = c.fg }
      hl["@variable.parameter"] = { fg = c.fg }
      hl["@property"] = { fg = c.fg }
      hl["@lsp.type.property"] = { fg = c.fg }

      hl["@punctuation.bracket"] = { fg = "#1a1a1a" }
      hl["@punctuation.delimiter"] = { fg = "#1a1a1a" }
      hl["@constructor"] = { fg = "#1a1a1a" }
      hl.Delimiter = { fg = "#1a1a1a" }

      hl.LspReferenceText = { bg = "#e9e9e9" }
      hl.LspReferenceRead = { bg = "#e9e9e9" }
      hl.LspReferenceWrite = { bg = "#e9e9e9" }

      hl.CursorLine = { bg = "#f5f5f5" }

      hl.FlashMatch = { fg = "#1a1a1a", bg = "#e0e0e0" }
      hl.FlashLabel = { fg = "#1a1a1a", bg = "#fce094", bold = true }
      hl.FlashCurrent = { fg = "#1a1a1a", bg = "#c8ddf0" }
    end,
  },
}
