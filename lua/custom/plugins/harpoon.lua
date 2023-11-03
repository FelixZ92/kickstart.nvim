return {
  'theprimeagen/harpoon',
  config = function ()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>m", mark.add_file, { desc = "[M]ark file in harpoon"})
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle Harpoon quick menu"})

    vim.keymap.set("n", "<C-o>", function() ui.nav_file(1) end, { desc = "Harpoon: navigate to file 1" })
    vim.keymap.set("n", "<C-p>", function() ui.nav_file(2) end, { desc = "Harpoon: navigate to file 2" })
    vim.keymap.set("n", "<C-q>", function() ui.nav_file(3) end, { desc = "Harpoon: navigate to file 3" })
    vim.keymap.set("n", "<C-a>", function() ui.nav_file(4) end, { desc = "Harpoon: navigate to file 4" })
  end
}
