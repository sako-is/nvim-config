function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<C-z>", ":undo<cr>")
map("n", "<C-y>", ":redo<cr>")
map("n", "<C-u>", ":Glow<cr>")
map("n", "<C-s>", ":w<cr>")
map("n", "<C-w>", ":q<cr>")
map("t", "<C-w>", ":q<cr>")
map("n", "<C-t>", ":Neotree<cr>")
map("n", "<C-h>", ":TagbarToggle<cr>")
map("n", "<C-j>", ":ToggleTerm size=20 dir=. direction=horizontal<CR>")