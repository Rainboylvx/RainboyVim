require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- Shorten function name
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("n","<F2>",":NvimTreeToggle<cr>",opts)
