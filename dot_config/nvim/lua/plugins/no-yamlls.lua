return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        yamlls = {
          mason = false,
          enabled = false,
        },
      },
    },
  },
}
