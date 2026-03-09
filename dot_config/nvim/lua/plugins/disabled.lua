return {
  { "nvim-mini/mini.pairs", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jsonls = { mason = false, enabled = false },
        yamlls = { mason = false, enabled = false },
      },
    },
  },
}
