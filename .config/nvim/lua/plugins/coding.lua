return {
    {
        "echasnovski/mini.nvim",
        version = false,
        event = "VeryLazy",
        config = function()
            require("mini.ai").setup()
            require("mini.bracketed").setup()
            require("mini.surround").setup()
            require("mini.trailspace").setup()
        end,
    },

    {
        "numToStr/Comment.nvim",
        keys = {
            "gcc",
            "gbc",
            { "gc", mode = { "n", "v" } },
            { "gb", mode = { "n", "v" } },
        },
        config = true,
    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    },

    {
        "Wansmer/treesj",
        keys = {
            { "<leader>sj", "<cmd>TSJToggle<cr>" },
        },
        config = true,
    },

    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        ft = "markdown",
    },

    {
        "iamcco/markdown-preview.nvim",
        ft = "markdown",
        build = "cd app && yarn install",
        init = function() vim.g.mkdp_filetypes = { "markdown" } end,
    },

    {
        "lervag/vimtex",
        ft = "tex",
        config = function()
            vim.g.vimtex_mappings_prefix = "<leader>l"
        end,
    },
}
