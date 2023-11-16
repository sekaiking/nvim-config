vim.api.nvim_create_autocmd('LspAttach', {
    desc = 'LSP actions',
    callback = function(event)
        -- Go to definition
        vim.api.nvim_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })

        -- Go to declaration
        vim.api.nvim_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', { noremap = true, silent = true })

        -- Show hover information
        vim.api.nvim_set_keymap('n', '<leader>i', '<cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

        -- Go to implementation
        vim.api.nvim_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', { noremap = true, silent = true })

        -- Find references
        vim.api.nvim_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', { noremap = true, silent = true })
    end
})

require('mason').setup()
require('mason-lspconfig').setup({
    ensure_installed = {
        -- Replace these with whatever servers you want to install
        'rust_analyzer',
        'tsserver',
        "eslint",
        "html",
        "cssls",
        "lua_ls",
        "marksman",
        "svelte",
        "marksman",
        "grammarly",
    }
})

local lspconfig = require('lspconfig');
local capabilities = require('cmp_nvim_lsp').default_capabilities()



require('mason-lspconfig').setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({    capabilities = capabilities})
    end,
})

require('copilot').setup({
    suggestion = {enabled = false},
    panel = {enabled = false},
})

require("copilot_cmp").setup()

local cmp = require('cmp')

local cmp_mappings = cmp.mapping.preset.insert({
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-e>'] = cmp.mapping.close(),
    ['<Tab>'] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true
    }),
})

local  cmp_sources = {
    { name = "copilot", group_index = 2 },
    { name = "nvim_lsp", group_index = 2 },
    { name = 'buffer', group_index = 2 },
    { name = "path", group_index = 2 },
    { name = "luasnip", group_index = 2 },
}

local cmp_snippet = {
    expand = function(args)
        require('luasnip').lsp_expand(args.body) 
    end,
}

cmp.setup({
    sources = cmp_sources,
    mapping = cmp_mappings,
    snippet = cmp_snippet,
})
