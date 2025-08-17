return {
  "neovim/nvim-lspconfig",
  version = "*", -- Atualiza para a versão mais recente
  lazy = false, -- Carrega o plugin somente quando necessário
  dependencies = {
    "williamboman/mason.nvim", -- Gerenciador de servidores LSP
    "williamboman/mason-lspconfig.nvim", -- Integração do Mason com lspconfig
  },
  config = function()
    require("mason").setup() -- Configura o Mason
    require("mason-lspconfig").setup() -- Configura o Mason para gerenciar LSPs
  end,
}

