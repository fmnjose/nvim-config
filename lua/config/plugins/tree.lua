return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup({
        sort_by = "name",
        view = { width = 30, side = "left" },
        renderer = { icons = { show = { file = true, folder = true, git = true } } },
        git = { enable = true, ignore = false },
      })
      vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    end,
  }
}
