local o = vim.o
local g = vim.g
o.cursorline = true
o.cursorlineopt = "number"
o.expandtab = true
g.mapleader = " "
o.number = true
o.relativenumber = true
o.shiftwidth = 4
o.showmode = false
o.signcolumn = "yes"
o.tabstop = 4
o.termguicolors = true
o.wrap = false

vim.filetype.add({
    extension = { jinja = "htmldjango" },
})
