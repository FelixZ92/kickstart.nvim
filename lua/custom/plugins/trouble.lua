return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  config = function()
    vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
      { silent = true, noremap = true, desc = "Toggle troubleshooting - [q]uickfix" }
    )
    vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
      { silent = true, noremap = true, desc = "Toggle troubleshooting - [d]ocument_diagnostics" }
    )
    vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
      { silent = true, noremap = true, desc = "Toggle troubleshooting - [w]orkspace_diagnostics" }
    )
  end
}
