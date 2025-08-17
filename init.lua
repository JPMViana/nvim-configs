-- 👇 Define a tecla Líder
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- 👇 Carrega as configurações principais definidas nos módulos externos
require('core.options')
require('core.keymaps') 


-- 👇 Caminho onde o lazy.nvim será instalado
local lazypath = vim.fn.stdpath('data') .. "/lazy/lazy.nvim"

-- 👇 Verifica se ainda não foi instalado
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", 
    "clone", 
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath
  })
end

-- 👇 Adiciona o lazy.nvim ao runtime do Neovim
vim.opt.rtp:prepend(lazypath)

-- 👇 Carrega os plugins no diretorio plugins
require("lazy").setup('plugins')
