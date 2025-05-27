return {
  "tokyonight.nvim",
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    on_highlights = function(hl, c)
      hl.StatusLine = { bg = "NONE", fg = c.fg_dark }
      hl.StatusLineNC = { bg = "NONE", fg = c.fg_gutter }
      hl.StatusLineSeparator = { bg = "NONE" }
      hl.StatusLineTerm = { bg = "NONE", fg = c.fg_dark }
    end,
  },
}
