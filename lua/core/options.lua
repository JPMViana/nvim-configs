-- options
local opt = vim.opt -- Opções do editor


-- Contexto
opt.colorcolumn = null -- Desativa linha que indica a largura máxima do texto
opt.number = true -- Exibe números de linha
opt.relativenumber = true -- Exibe números de linha relativos

-- Editor
opt.autoindent = true -- Indentação automática
opt.expandtab = true -- Converte tabulações em espaços
opt.shiftwidth = 5 -- Define o número de espaços para indentação
opt.smartindent = true -- Indentação inteligente
opt.tabstop = 2 -- Define o número de espaços que uma tabulação representa
opt.wrap = false -- Desativa quebra automática de linhas
opt.linebreak = true -- Quebra linhas de forma inteligente

-- Busca
opt.hlsearch = true -- Destaca resultados da busca
opt.incsearch = true -- Busca incremental
opt.ignorecase = true -- Ignora maiúsculas/minúsculas na busca
opt.smartcase = true -- Ignora maiúsculas/minúsculas se a busca não tiver letras maiúsculas

-- Outros
opt.completeopt = { "menu", "menuone", "noselect" } -- Opções de completamento
opt.termguicolors = true -- Habilita cores no terminal
opt.undofile = true -- Habilita histórico de desfazer


