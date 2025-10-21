require("config.lazy")

-- Manually set coffee filetypes becuase of reasons
vim.filetype.add({
  extension = {
    coffee = 'coffee',
  }
})

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
vim.cmd("inoremap jk <esc>")
vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.swapfile = false

vim.keymap.set('n', '<c-a>', ':Neotree filesystem reveal float<cr>')

-- misc keymaps
vim.keymap.set('n', '<c-s>', ':w<cr>') -- control+s to save
vim.keymap.set('n', '<leader>h', ':nohlsearch<cr>') -- space+h to clear find highlight text
vim.keymap.set('n', 'B', '^') -- shift+b jump to beginning of line
vim.keymap.set('n', 'E', '$') -- shift+e jumpt to end of line
