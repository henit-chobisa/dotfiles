local Remap = require("henit.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

nnoremap("<leader>pv", ":Ex<CR>")
nnoremap("<leader><space>", ':normal gg=G``<CR>')

-- greatest remap ever
xnoremap("<leader>p", "\"_dP")
