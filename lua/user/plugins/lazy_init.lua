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
        'nvim-tree/nvim-tree.lua'
    },
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = true
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        config = function()
            require("nvim-tree").setup {}
        end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function()
            require("ibl").setup()
        end
    },
}
