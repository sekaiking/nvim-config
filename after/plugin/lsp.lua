require("trouble").setup({
    auto_close = true,
})

require("lsp_signature").setup({})

require("corn").setup({})

vim.keymap.set("n", "<leader>fE", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>fe", function() require("trouble").toggle("document_diagnostics") end)
