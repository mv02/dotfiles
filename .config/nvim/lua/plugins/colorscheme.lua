return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function(_, opts) vim.cmd("colorscheme catppuccin-mocha") end,
    },

    {
        "ellisonleao/gruvbox.nvim",
        opts = {
            overrides = {
                CursorLineNr = { bg = "NONE" },
                SignColumn = { bg = "#282828" },
                GruvboxAquaSign = { bg = "NONE" },
                GruvboxBlueSign = { bg = "NONE" },
                GruvboxGreenSign = { bg = "NONE" },
                GruvboxOrangeSign = { bg = "NONE" },
                GruvboxPurpleSign = { bg = "NONE" },
                GruvboxRedSign = { bg = "NONE" },
                GruvboxYellowSign = { bg = "NONE" },
            },
        },
        config = function(_, opts) require("gruvbox").setup(opts) end,
    },
}
