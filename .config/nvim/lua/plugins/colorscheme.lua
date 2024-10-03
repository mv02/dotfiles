return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        opts = {
            overrides = {
                CursorLineNr = { bg = "#282828" },
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
        config = function(_, opts)
            require("gruvbox").setup(opts)
            vim.cmd("colorscheme gruvbox")
        end,
    },
}
