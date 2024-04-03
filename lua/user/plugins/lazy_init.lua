return {
    {
        'nvim-lua/plenary.nvim',
        priority = 1000
    },
    {
        'tpope/vim-fugitive'
    },
    {
        'nvim-tree/nvim-web-devicons',
        priority = 1000
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            require("ibl").setup()
        end
    },
    {
        "mhinz/vim-signify"
    },
}
