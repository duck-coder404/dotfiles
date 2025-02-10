return {
    'nvim-telescope/telescope.nvim',
    event = "VimEnter",
    dependencies = {
        "nvim-telescope/telescope-file-browser.nvim",
        'nvim-lua/plenary.nvim',
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
        },
        "nvim-telescope/telescope-ui-select.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("telescope").setup({
            extensions = {
                file_browser = {
                    hijack_netrw = true,
                }
            }
        })

        require("telescope").load_extension("fzf")
        require("telescope").load_extension("ui-select")
        require("telescope").load_extension("file_browser")

        -- Key mapping for Telescope file browser
        vim.keymap.set('n', '<leader>e',
            require('telescope').extensions.file_browser.file_browser,
            { noremap = true, silent = true })
    end,
}
