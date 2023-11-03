return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 999,
  config = function ()
    vim.cmd.colorscheme "catppuccin"
    require('catppuccin').setup({
      flavour = "mocha",
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = true,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        harpoon = true,
        lsp_trouble = true,
        illuminate = {
          enabled = true,
          lsp = true
        }
      }
    })


  end

}
