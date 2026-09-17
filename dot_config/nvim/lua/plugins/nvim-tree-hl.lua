return {
  "nvim-tree/nvim-tree.lua",
  config = function(_, opts)
    require("nvim-tree").setup(opts)
    vim.api.nvim_create_autocmd("ColorScheme", {
      callback = function()
        vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = "#e0af68", bold = true })
      end,
    })
    vim.api.nvim_set_hl(0, "NvimTreeRootFolder", { fg = "#e0af68", bold = true })
  end,
}
