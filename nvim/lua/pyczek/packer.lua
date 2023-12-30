vim.cmd[[packadd packer.nvim]]
return require('packer').startup(function(use)
    use "ThePrimeagen/vim-be-good"
    use "iagorrr/noctis-high-contrast.nvim"
    use "cratelyn/pfil"
    use "neoclide/coc.nvim"
--    use "petertriho/nvim-scrollbar"
    use {
        "ellisonleao/glow.nvim", 
        config = function() require("glow").setup() 
    end}
    use {
        "startup-nvim/startup.nvim",
        requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
        config = function()
            require("startup").setup({theme = "dashboard"})
        end
    }

    use "seandewar/nvimesweeper"
--    use "alec-gibson/nvim-tetris"
--    use { 'gen740/SmoothCursor.nvim',
--        config = function()
--            require('smoothcursor').setup()
--        end
--    }
--
--    use 'karb94/neoscroll.nvim' 

    use "stevearc/dressing.nvim"
    use({
        "ziontee113/icon-picker.nvim",
        config = function()
            require("icon-picker").setup({
                disable_legacy_commands = true
            })
        end,
    })

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    use 'nvim-tree/nvim-web-devicons'
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
    use 'romgrk/barbar.nvim'
    --use {'neoclide/coc.nvim', branch = 'release'} p
    use {
        "Rogerskelamen/live-server.nvim",
        config = function()
            require "live-server".setup{}
        end
    }
    use "xiyaowong/transparent.nvim"
    use "blazkowolf/gruber-darker.nvim"
    use "rose-pine/neovim"
    use "ribru17/bamboo.nvim"
    use "nyoom-engineering/oxocarbon.nvim"
    use "tiagovla/tokyodark.nvim"
    use "preservim/vimux"
    use 'tamton-aquib/staline.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use { "ellisonleao/gruvbox.nvim" }
    use {
        'VonHeikemen/fine-cmdline.nvim',
        requires = {
            {'MunifTanjim/nui.nvim'}
        }
    }
    use {"windwp/nvim-ts-autotag"}
    use {"norcalli/nvim-colorizer.lua"}
    use "m4xshen/smartcolumn.nvim"
    use "uga-rosa/ccc.nvim"
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    use {
        "SmiteshP/nvim-navic",
        requires = "neovim/nvim-lspconfig"
    }

    use {"akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end}
    use 'wbthomason/packer.nvim'
    use 'onsails/lspkind.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use('Mofiqul/vscode.nvim')
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
        local ts_update
        ts_update = require('nvim-treesitter.install').update(
        { with_sync = true })
        ts_update()
    end,}
    use('ThePrimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",

        }
    }

    use "onsails/lspkind.nvim"

    use("petertriho/nvim-scrollbar")

    use "karb94/neoscroll.nvim"

    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp',
            'quangnguyen30192/cmp-nvim-ultisnips',
            'hrsh7th/cmp-nvim-lua',
            'octaltree/cmp-look',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-calc',
            'f3fora/cmp-spell',
            'hrsh7th/cmp-emoji',
        },
        config = function()
            local kind_icons = {
                Text = "",
                Method = "󰆧",
                Function = "󰊕",
                Constructor = "",
                Field = "󰇽",
                Variable = "󰂡",
                Class = "󰠱",
                Interface = "",
                Module = "",
                Property = "󰜢",
                Unit = "",
                Value = "󰎠",
                Enum = "",
                Keyword = "󰌋",
                Snippet = "",
                Color = "󰏘",
                File = "󰈙",
                Reference = "",
                Folder = "󰉋",
                EnumMember = "",
                Constant = "󰏿",
                Struct = "",
                Event = "",
                Operator = "󰆕",
                TypeParameter = "󰅲",
            }

            local cmp = require('cmp')
            require('cmp').setup {
                formatting = {
                    fields = { 'abbr', 'menu', 'kind' }, -- fields is the order from left to right
                    format = function(entry, vim_item)
                        vim_item.kind = kind_icons[vim_item.kind] or ''
                        vim_item.menu = ({
                            buffer = '[Buffer]',
                            nvim_lsp = '[LSP]',
                            luasnip = '[LuaSnip]',
                            nvim_lua = '[Lua]',
                            latex_symbols = '[LaTeX]',
                        })[entry.source.name]
                        return vim_item
                    end,
                },
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                }
            }
        end,
    }
    use {
        'tzachar/cmp-tabnine',
        run = './install.sh',
        requires = 'hrsh7th/nvim-cmp'
    }

    use('folke/zen-mode.nvim')
    use("catppuccin/nvim")
end)
























