return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "saghen/blink.cmp",
        {
            "williamboman/mason.nvim",
            config = true,
        },
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        {
            "j-hui/fidget.nvim",
            config = true,
        },
    },
    config = function()
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("kickstart-lsp-attach", {
                clear = true,
            }),
            callback = function() end,
        })

        local servers = {
            lua_ls = {},
            stylua = {},
        }

        require("mason-tool-installer").setup({
            ensure_installed = vim.tbl_keys(servers),
        })
        ---@diagnostic disable-next-line: missing-fields
        require("mason-lspconfig").setup({
            handlers = {
                function(server)
                    local config = servers[server] or {}
                    config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
                    require("lspconfig")[server].setup(config)
                end,
            },
        })
    end,


    --    lspconfig.rust_analyzer.setup {
    --        capabilities = capabilities,
    --        on_attach = on_attach,
    --    },
}
