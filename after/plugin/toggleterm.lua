vim.api.nvim_set_keymap('n', '<c-d>', ':ToggleTerm direction=float<CR>', {noremap = true, silent = true})
require("toggleterm").setup{
   float_opts = {
    border = 'single',
    width = 100,
    height = 40,
    title_pos = 'center'
  } 
}
