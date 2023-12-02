require("solarized-osaka").setup({
    transparent = true,
    terminal_colors = true,
    styles = {
        sidebars = "transparent",
        comments = { italic = false },
        keywords = { italic = false },
    },
    on_highlights = function(hl, c)
        hl.TroubleNormal = {
            bg = c.bg_dark,
        }
    end,
});

vim.cmd [[colorscheme solarized-osaka]]

-- Nvim Statusline
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'nightfly'
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = {
            'diagnostics',
            {
                'filename',
                file_status = true,
                path = 1,
            },
            'branch',
            'diff',
        },
        lualine_c = {
            {
                'searchcount',
                maxcount = 999,
                timeout = 500,
            }
        },
        lualine_x = {
            {
                'datetime',
                style = '%H:%M:%S',
            },
            'encoding',
            {
                'filetype',
                colored = true,
            },
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
    }
}

-- highlight colors
require('nvim-highlight-colors').setup({})
