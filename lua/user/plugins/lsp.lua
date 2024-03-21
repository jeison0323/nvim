return{
    {
        'williamboman/mason.nvim',
        config = function()
            require("mason").setup({})
        end
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        priority = 1000,
        branch = 'v3.x',
        config = function()
            local lsp_zero = require('lsp-zero')
            lsp_zero.on_attach(function(client, bufnr)
                lsp_zero.default_keymaps({buffer = bufnr})
            end)
        end
    },

    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            local lsp_zero = require('lsp-zero')
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "pylsp",
                    "lua_ls"
                },
                handlers = {
                    lsp_zero.default_setup,
                }
            }) 
        end
    },
        {
        'neovim/nvim-lspconfig'
    },
    {'hrsh7th/cmp-nvim-lsp'},
    {
        'hrsh7th/nvim-cmp',
        config = function()       
            local cmp = require("cmp")
            cmp.setup{
                mapping = {
                    ['<CR>'] = function(fallback)
                        if cmp.visible() then
                            cmp.confirm()
                        else
                            fallback()
                        end
                    end,
                    ['<Tab>'] = function (fallback)
                        if cmp.visible() then
                            cmp.select_next_item()
                        else
                            fallback()
                        end
                    end,
                    ['<C-Space>'] = cmp.mapping.complete(),
                }
            }
        end
    },
    {'L3MON4D3/LuaSnip'},

}


