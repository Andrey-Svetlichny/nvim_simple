local keymap = vim.keymap

keymap.set({"n", "i", "v", "c"}, "<C-q>", "<cmd>quit<CR>", { desc = "Quit" })

