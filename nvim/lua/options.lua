vim.opt.tabstop = 4        -- Number of spaces that a <Tab> counts for
vim.opt.shiftwidth = 4     -- use tap as 4 spaces
vim.opt.softtabstop = 0    -- idr
vim.opt.autoindent = true  -- idr
vim.opt.smarttab = true    -- continue with the same tab hight
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.syntax = "on"      -- Enable syntax highlighting
vim.opt.number = true      -- Enable line numbers
vim.opt.list = true        -- Enable whitespace visualization
vim.opt.breakindent = true -- Enable break indent
vim.opt.undofile = true    -- Save undo history

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.listchars = {
    tab = "▸▸",
    trail = "•",
    space = "·",
    eol = "↴",
}
