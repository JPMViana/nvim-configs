return {
  "hrsh7th/nvim-cmp",
  version = "*", -- Atualiza para a versão mais recente
  lazy = false, -- Sempre carrega o plugin, não somente quando necessário
  dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- Fonte de autocompletar para LSP
    "hrsh7th/cmp-buffer", -- Fonte de autocompletar para buffers abertos
    "hrsh7th/cmp-path", -- Fonte de autocompletar para caminhos de arquivos
    "hrsh7th/cmp-cmdline", -- Fonte de autocompletar para comandos
    "neovim/nvim-lspconfig", -- Configuração do LSP
  },
  config = function()

    local cmp = require("cmp")
    cmp.setup({
      mapping = cmp.mapping.preset.insert({
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<Tab>"] = cmp.mapping.confirm({ select = true }),
          ["<esc>"] = cmp.mapping({
              i = cmp.mapping.abort(),
              c = cmp.mapping.close(),
          }),
          ["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
          ["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
      }),
      sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "buffer" },
          { name = "path" },
      }),
      sorting = {
        priority_weight = 2,
        comparators = {
          require("copilot_cmp.comparators").prioritize,
          cmp.config.compare.offset,
          cmp.config.compare.exact,
          cmp.config.compare.score,
          cmp.config.compare.recently_used,
          cmp.config.compare.kind,
          cmp.config.compare.sort_text,
          cmp.config.compare.length,
          cmp.config.compare.order,
        },
      },
    })

    require("lspconfig").pyright.setup({
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
    }) -- Configuração do LSP para Python com suporte a autocompletar
    end,
}

