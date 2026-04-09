return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",

        init = function()
            -- Install parsers
            require("nvim-treesitter").install({
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
            })

            -- Start treesitter automatically in buffers
            vim.api.nvim_create_autocmd("FileType", {
                callback = function(args)
                    local ft = vim.bo[args.buf].filetype
                    local lang = vim.treesitter.language.get_lang(ft)

                    -- Start if a parser for the filetype exists
                    if vim.treesitter.language.add(lang) then
                        vim.treesitter.start()
                    end
                end,
            })
        end,
    },
}
