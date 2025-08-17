-- Keymaps
local km = vim.keymap

-- Limpa a busca com esc
km.set('n', '<esc>', '<cmd>nohlsearch<cr>', { silent = true, desc = 'Clear search highlights' })

-- Atalhos para salvar e sair
km.set('n', '<leader>w', '<cmd>w<cr>', { silent = true, desc = 'Save file' })
km.set('n', '<leader>q', '<cmd>q<cr>', { silent = true, desc = 'Quit Neovim' })
km.set('n', '<leader>qq', '<cmd>qa!<cr>', { silent  = true, desc = 'Quit all files' })
km.set('n', '<leader>wq', '<cmd>wq<cr>', { silent = true, desc = 'Save and quit' }) 

-- Atalhos para abrir o terminal
km.set('n', '<leader>t', '<cmd>terminal<cr>', { silent = true, desc = 'Open terminal' })
km.set('t', '<leader>t', '<C-\\><C-n><cmd>terminal<cr>', { silent = true, desc = 'Open terminal in normal mode' })

-- Atalhos para abrir o explorador de arquivos
km.set('n', '<leader>e', function()
  local api = require("nvim-tree.api")
  if api.tree.is_visible() then
    api.tree.focus()   -- já aberto → só move o foco
  else
    api.tree.open()    -- fechado → abre
  end
end, { silent = true, desc = 'Toggle/Focus File Tree' })


-- Redimensionar janelas
km.set('n', '<C-Up>', '<cmd>resize -2<cr>', { silent = true, desc = 'Resize window up' })
km.set('n', '<C-Down>', '<cmd>resize +2<cr>', { silent = true, desc = 'Resize window down' })
km.set('n', '<C-Left>', '<cmd>vertical resize -2<cr>', { silent = true, desc = 'Resize window left' })
km.set('n', '<C-Right>', '<cmd>vertical resize +2<cr>', { silent = true, desc = 'Resize window right' })

-- Navegação entre janelas
km.set('n', '<C-h>', '<C-w>h', { silent = true, desc = 'Go to left window' })
km.set('n', '<C-j>', '<C-w>j', { silent = true, desc = 'Go to bottom window' })
km.set('n', '<C-k>', '<C-w>k', { silent = true, desc = 'Go to top window' })
km.set('n', '<C-l>', '<C-w>l', { silent = true, desc = 'Go to right window' })



