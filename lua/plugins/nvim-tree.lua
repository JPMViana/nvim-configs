return {
  "nvim-tree/nvim-tree.lua",
  version = "*", -- Atualiza para a versão mais recente
  lazy = false, -- Carrega o plugin somente quando necessário
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- Ícones bonitinhos para arquivos
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}

