require("config.lazy")

-- Manually setting filetypes because of reasons
vim.filetype.add({
  extension = {
    coffee = 'coffee',
    slim = 'slim',
  }
})

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set smartindent")
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"
vim.cmd("inoremap jk <esc>")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.fileformats = { "unix", "dos" }
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.swapfile = false

vim.keymap.set('n', '<c-a>', ':Neotree filesystem reveal float<cr>')

-- misc keymaps

-- Control+s to save file and return to normal mode
vim.keymap.set('n', '<c-s>', ':w<cr>')
vim.keymap.set('i', '<c-s>', '<Esc>:w<cr>')
-- Control+q to save & quit file
vim.keymap.set('n', '<c-q>', ':wq!<cr>')
vim.keymap.set('i', '<c-q>', '<Esc>:wq!<cr>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<cr>') -- space+h to clear find highlight text
vim.keymap.set('n', 'B', '^') -- shift+b jump to beginning of line
vim.keymap.set('n', 'E', '$') -- shift+e jumpt to end of line
vim.keymap.set('n', '<leader>r', ':source ~/.config/nvim/init.lua<cr>', { desc = "Reload config" })
vim.keymap.set('v', '<C-d>', '"hy:%s/<C-r>h//gc<left><left><left>', { desc = "Substitute with selection", silent = false })
vim.keymap.set('v', '>', '>gv', { desc = "Indent selection right and reselect" })
vim.keymap.set('v', '<', '<gv', { desc = "Indent selection left and reselect" })

-- Move lines up and down, and re-indent
vim.keymap.set('n', '<m-k>', ':m .-2<CR>==', { desc = 'Move line up' })
vim.keymap.set('n', '<m-j>', ':m .+1<CR>==', { desc = 'Move line down' })

vim.keymap.set('i', '<m-k>', '<Esc>:m .-2<CR>==gi', { desc = 'Move line up' })
vim.keymap.set('i', '<m-j>', '<Esc>:m .+1<CR>==gi', { desc = 'Move line down' })

vim.keymap.set('v', '<m-k>', ":m '<-2<CR>gv=gv", { desc = 'Move lines up' })
vim.keymap.set('v', '<m-j>', ":m '>+1<CR>gv=gv", { desc = 'Move lines down' })

