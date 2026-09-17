return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Explorer" },
  },
  opts = {
    view = {
      width = 40,
    },
    filters = {
      dotfiles = true,
    },
    renderer = {
      root_folder_label = function(path)
        local parts = {}
        for part in path:gmatch("[^/]+") do table.insert(parts, part) end
        local n = #parts
        if n >= 3 then
          return "../" .. parts[n-2] .. "/" .. parts[n-1] .. "/" .. parts[n]
        elseif n >= 2 then
          return "../" .. parts[n-1] .. "/" .. parts[n]
        end
        return path
      end,
    },
  },
}
