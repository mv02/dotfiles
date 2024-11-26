return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        },
        cmd = "Neotree",
        keys = {
            { "<leader>fe", "<cmd>Neotree toggle<cr>" },
        },
        opts = {
            window = { position = "right" },
        },
    },

    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        event = "VeryLazy",
        opts = {
            options = {
                theme = "catppuccin",
                disabled_filetypes = { "neo-tree", "trouble" },
                component_separators = "",
                section_separators = { left = "", right = "" },
            },
        },
    },

    {
        "numToStr/Navigator.nvim",
        keys = {
            { "<C-h>", "<cmd>NavigatorLeft<cr>", mode = { "n", "t" } },
            { "<C-j>", "<cmd>NavigatorDown<cr>", mode = { "n", "t" } },
            { "<C-k>", "<cmd>NavigatorUp<cr>", mode = { "n", "t" } },
            { "<C-l>", "<cmd>NavigatorRight<cr>", mode = { "n", "t" } },
        },
        config = true,
    },

    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = true,
    },

    {
        "andweeb/presence.nvim",
        event = "VeryLazy",
    },
}
