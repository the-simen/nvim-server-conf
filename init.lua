local map = vim.keymap.set

vim.opt.number = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Netrw keymaps
vim.api.nvim_create_autocmd("FileType", {
    pattern = "netrw",
    callback = function()
        local opts = { buffer = true, remap = true, silent = true }

        map("n", "a", "%", opts) -- Create file
        map("n", "A", "<Plug>NetrwMakeDir", opts) -- Create directory
        map("n", "d", "D", opts) -- Delete
        map("n", "r", "R", opts) -- Rename
    end,
})

map("i", "jj", "<Esc>", { noremap = true, silent = true })
map("n", ";", ":", { noremap = true, silent = true })
map("n", "<leader>e", "<cmd>Ex<CR>", { noremap = true, silent = true })
