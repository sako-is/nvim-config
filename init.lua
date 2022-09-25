local set = vim.opt

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

set.expandtab = true
set.smarttab = true
set.shiftwidth = 4
set.fileencoding = 'utf-8'
set.number = true
set.mouse = 'a'
set.autoindent = true
set.termguicolors = true

require('packer-plugins')
require('simple-keymaps')
require('cokeline-config')

-- vim.cmd([[PackerSync]])
require('lualine').setup()
require('telescope').setup()
require('nvim-treesitter').setup()

map("n", "<C-f>", ":Telescope find_files<cr>")

-- require('telescope.builtin').find_files()
-- require('telescope.builtin').live_grep()
-- require('telescope.builtin').buffers()
-- require('telescope.builtin').help_tags()

vim.cmd("colorscheme minimal")
