require("tokyonight").setup({
    style = "night", 
    transparent = true,
    terminal_colors = true,
    styles = {
        sidebars = "transparent",
        comments = { italic = false },
        keywords = { italic = false },
    }
});

vim.cmd[[colorscheme tokyonight]]

-- Nvim Statusline
require('lualine').setup {
    options = {
        -- ... your lualine config
        theme = 'tokyonight'
        -- ... your lualine config
    }
}

-- highlight colors
require('nvim-highlight-colors').setup({
    render = 'background',
})
require('nvim-highlight-colors').turnOn()
