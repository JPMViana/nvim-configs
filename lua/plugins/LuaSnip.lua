return{
    "LuaSnip",
    version = "*", -- Atualiza para a versão mais recente
    lazy = false, -- Carrega o plugin somente quando necessário
    dependencies = {
        "L3MON4D3/LuaSnip", -- Plugin principal do LuaSnip
        "saadparwaiz1/cmp_luasnip", -- Integração do LuaSnip com nvim-cmp
        "rafamadriz/friendly-snippets", -- Coleção de snippets amigáveis
    },
    config = function()
        require("luasnip").setup({
            history = true, -- Habilita o histórico de snippets
            updateevents = "TextChanged,TextChangedI", -- Atualiza os snippets em eventos de texto
        })
    end,
}