return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "bash",
                    "c",
                    "cpp",
                    "diff",
                    "fish",
                    "gitcommit",
                    "gitignore",
                    "html",
                    "javascript",
                    "json",
                    "latex",
                    "lua",
                    "make",
                    "markdown",
                    "python",
                    "sql",
                    "svelte",
                    "typescript",
                },

                highlight = {
                    enable = true,
                    disable = { "latex", "htmldjango" },
                },

                indent = {
                    enable = true,
                },
            })
        end,
    },
}
