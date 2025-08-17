return{
    'folke/tokyonight.nvim',
    lazy = false, -- Carrega imediatamente ao iniciar o Neovim
    priority = 1000, -- Alta prioridade para garantir que o tema seja carregado primeiro
    config = function()
        vim.cmd.colorscheme('tokyonight') -- Define o esquema de cores
    end,
}