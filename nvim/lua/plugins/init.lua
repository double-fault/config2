return {
    {
        'projekt0n/github-nvim-theme',
        name = 'github-theme',
        lazy = false,
        priority = 1000,
        config = function()
            require('github-theme').setup()
            vim.cmd("colorscheme github_dark_high_contrast")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        branch = 'master',
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { "cpp", "python", "xml", "lua", "vim", "bash", "c", "diff", "html", "markdown",
                                        "markdown_inline", "ruby", "vimdoc", "query" },
                auto_install = true,
                highlight = {
                    enable = true,
                    use_languagetree = true,
                },
                indent = { enable = false },
            })
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        lazy = false,
        config = function()
            require('lualine').setup({
                options = { theme = "dracula" }
            })
        end,
    },
    {
        "NMAC427/guess-indent.nvim",
        lazy = false,
        config = function()
            require('guess-indent').setup()
        end,
    }
}
