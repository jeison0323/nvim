return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    config = function()
        require("telescope").setup({})
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<leader>ps', function()
            builtin.live_grep()
        end)
    end
}
