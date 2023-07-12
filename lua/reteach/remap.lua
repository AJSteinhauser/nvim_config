vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("x", "<leader>p", "\"_dp")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>pq", ":q<enter>")

vim.keymap.set("n", "<leader>pt", ":Fern .<enter>")
vim.keymap.set("n", "<leader>pr", ":Fern . -reveal=%<enter>")

vim.keymap.set("n", "<leader>tt", ":ToggleTerm direction=float<enter>")
--Autocomplete remaps
vim.keymap.set("n", "<leader>y", "<C>y")


vim.keymap.set("n", "<leader>t", ":Trouble<enter>")
vim.keymap.set("n", "<leader>T", ":TroubleClose<enter>")
