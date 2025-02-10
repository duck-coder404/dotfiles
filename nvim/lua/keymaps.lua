-- format
vim.keymap.set('n', '<leader>f', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })

-- run
vim.api.nvim_set_keymap('n', '<F5>', ':w', {
    noremap = true,
    silent = true,
    callback = function()
        local ft = vim.bo.filetype
        if ft == "python" then
            vim.cmd("!python3 '" .. vim.fn.expand("%:p") .. "'")
        elseif ft == "c" then
            local file = vim.fn.expand("%:p")     -- full path to the code
            local output = vim.fn.expand("%:p:r") -- full path compiled
            vim.cmd("silent! !gcc '" .. file .. "' -o '" .. output .. "'")
            vim.cmd("!" .. output)
            print("\n")
            vim.cmd("silent! !rm '" .. output .. "'")
        else
            print("Unsupported filetype: " .. ft)
        end
    end,
})
