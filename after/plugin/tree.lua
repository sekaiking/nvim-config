-- disable netrw 
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    filters = {
        custom = {
            "^.git$",
            "^node_modules$",
        }
    }
})
