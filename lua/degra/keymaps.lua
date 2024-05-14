vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>h", ":nohl<cr>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split horizontally" })
keymap.set("n", "<leader>sx", "<cmd>close<cr>", { desc = "Close current split" })

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<cr>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<cr>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<cr>", { desc = "Go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<cr>", { desc = "Go to previous tab" })

-- navigate in insert mode
keymap.set("i", "<C-h>", "<Left>", { desc = "Move left" })
keymap.set("i", "<C-j>", "<Down>", { desc = "Move down" })
keymap.set("i", "<C-k>", "<Up>", { desc = "Move up" })
keymap.set("i", "<C-l>", "<Right>", { desc = "Move right" })

-- rustucean
keymap.set({ "n", "v" }, "<leader>la", "<cmd>RustLsp codeAction<cr>", { desc = "Code action" })
keymap.set("n", "<leader>lle", "<cmd>RustLsp expandMacro<cr>", { desc = "Macro expand" })
keymap.set("n", "<leader>lld", "<cmd>RustLsp externalDocs<cr>", { desc = "Open external documentation" })
keymap.set("n", "<leader>llD", "<cmd>RustLsp debug<cr>", { desc = "Debug under cursor" })
