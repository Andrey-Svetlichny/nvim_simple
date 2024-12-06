return {
  "folke/tokyonight.nvim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("tokyonight").setup({
      dim_inactive = false,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
      },
      on_colors = function(colors)
        -- tune colors
        -- :hi Comment guifg=#FFFF00
        -- :hi Normal guibg=#16161e
        -- :hi WinSeparator guifg=#a9b1d6
        colors.comment = "#7885bf"
        colors.bg = "#16161e"
        colors.bg_dark = "#000000"
        colors.border = "#565f89"
      end
    })

    -- load the colorscheme here
    vim.cmd([[colorscheme tokyonight-night]])
  end,
}
