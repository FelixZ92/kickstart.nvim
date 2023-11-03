return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  config = function ()
    require('neo-tree').setup({
      window = {
        mappings = {
          ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = false } },
        }
      },
      use_libuv_file_watcher = true
    })
    vim.keymap.set("n", "<C-n>", "<cmd>Neotree toggle source=filesystem<cr>",
      {silent = true, noremap = true}
    )

  end,
}

