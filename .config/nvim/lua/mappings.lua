require "nvchad.mappings"

local map = vim.keymap.set
local harpoon = require "harpoon"
local tree = require "nvim-tree.api"
local conform = require "conform"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Save with CTRL+S
map("n", "<c-s>", ":w<CR>")
-- Harpoon Keymaps
harpoon:setup()

map("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "Harpoon file" })

map("n", "<leader>H", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon list" })
--    Harpoon files
map("n", "<leader>1", function()
  harpoon:list():select(1)
end, { desc = "Harpoon to file 1" })
map("n", "<leader>2", function()
  harpoon:list():select(2)
end, { desc = "Harpoon to file 2" })
map("n", "<leader>3", function()
  harpoon:list():select(3)
end, { desc = "Harpoon to file 3" })
map("n", "<leader>4", function()
  harpoon:list():select(4)
end, { desc = "Harpoon to file 4" })
map("n", "<leader>5", function()
  harpoon:list():select(5)
end, { desc = "Harpoon to file 5" })
map("n", "<leader>6", function()
  harpoon:list():select(6)
end, { desc = "Harpoon to file 6" })

-- Tree Keymaps
map("n", "<leader>e", function()
  tree.tree.toggle { file_path = true }
end, { desc = "Tree toggle" })

-- Conform formatter Keymaps
map({ "n", "v" }, "<leader>f", function()
  conform.format { lsp_fallback = true, async = true, timeout_ms = 300 }
end, { desc = "Formatting" })

--Trouble
map("n", "<leader>t", function()
  require("trouble").toggle()
end, { desc = "Trouble toogle" })

-- Mappings disabled
local nomap = vim.keymap.del
nomap("n", "<leader>h")
