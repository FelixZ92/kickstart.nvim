vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

vim.opt.incsearch = true

vim.opt.scrolloff = 8
vim.opt.isfname:append("@-@")


vim.opt.colorcolumn = "8"

require('which-key').register {
  ['<leader>p'] = { name = '[P]roject', _ = 'which_key_ignore' },
  ['<leader>H'] = { name = '[H]elp', _ = 'which_key_ignore' },
}


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move line up"})

vim.keymap.set("n", "<leader>Hn", function ()
  require('which-key').show("", {mode = "n", auto = true})
end, 
  {desc = "[H]elp for [n]ormal mode"})


vim.keymap.set("n", "<leader>Hv", function ()
  require('which-key').show("", {mode = "v", auto = true})
end, 
  {desc = "[H]elp for [v]isual mode"})


vim.keymap.set("n", "<leader>Hi", function ()
  require('which-key').show("", {mode = "i", auto = true})
end, 
  {desc = "[H]elp for [i]nsert mode"})

