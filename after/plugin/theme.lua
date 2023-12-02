require("solarized-osaka").setup({
    transparent = true,
    terminal_colors = true,
    styles = {
        sidebars = "transparent",
        comments = { italic = false },
        keywords = { italic = false },
    }
});

vim.cmd [[colorscheme solarized-osaka]]

-- Nvim Statusline
require('lualine').setup {
    options = {
        -- ... your lualine config
        theme = 'solarized-osaka'
        -- ... your lualine config
    }
}

-- highlight colors
require('nvim-highlight-colors').setup({})
