require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
-- map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>", { desc = "Save file" })

map("n", "<C-f>", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<C-g>", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })

map("n", "<leader>ls", function()
  local Terminal = require("toggleterm.terminal").Terminal
  local live = Terminal:new({
    cmd = "npx live-server",
    direction = "float",
    close_on_exit = false,
  })
  live:toggle()
end, { desc = "Live Server (float)" })

-- Navigation
map("t", "<C-h>", [[<C-\><C-n><C-w>h]])
map("t", "<C-j>", [[<C-\><C-n><C-w>j]])
map("t", "<C-k>", [[<C-\><C-n><C-w>k]])
map("t", "<C-l>", [[<C-\><C-n><C-w>l]])
