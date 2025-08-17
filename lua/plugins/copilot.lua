return {
  "zbirenbaum/copilot.lua",
  event = "InsertEnter",
  cmd = "Copilot",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<C-l>",       -- aceitar sugestão
          next = "<M-]>",        -- próxima sugestão
          prev = "<M-[>",        -- sugestão anterior
          dismiss = "<C-]>",     -- dispensar
        },
      },
      panel = {
        enabled = true, -- habilita o painel
      }, 
      filetypes = {
        -- habilite/desabilite por linguagem se quiser
        -- ["*"] = true,
      },
    })
  end,
}