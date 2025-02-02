return {
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "ConformInfo" },
        keys = {
            {
                -- Customize or remove this keymap to your liking
                "<leader>cf",
                function() require("conform").format({ async = true }) end,
                mode = "",
                desc = "Format buffer",
            },
        },
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    bash = { "beautysh" },
                    c = { "clang-format" },
                    cpp = { "clang-format" },
                    css = { "prettierd" },
                    html = { "prettierd" },
                    javascript = { "prettierd" },
                    javascriptreact = { "prettierd" },
                    json = { "prettierd" },
                    lua = { "stylua" },
                    markdown = { "prettierd" },
                    python = { "ruff_format" },
                    sh = { "beautysh" },
                    svelte = { "prettierd" },
                    typescript = { "prettierd" },
                    typescriptreact = { "prettierd" },
                    zsh = { "beautysh" },
                },

                format_on_save = function(bufnr)
                    -- Disable with a global or buffer-local variable
                    if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
                        return
                    end
                    return { timeout_ms = 500, lsp_format = "fallback" }
                end,
            })

            vim.api.nvim_create_user_command("Format", function(args)
                local range = nil
                if args.count ~= -1 then
                    local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
                    range = {
                        start = { args.line1, 0 },
                        ["end"] = { args.line2, end_line:len() },
                    }
                end
                require("conform").format({ async = true, lsp_format = "fallback", range = range })
            end, { range = true })

            vim.api.nvim_create_user_command("FormatDisable", function(args)
                if args.bang then
                    -- FormatDisable! will disable formatting just for this buffer
                    vim.b.disable_autoformat = true
                else
                    vim.g.disable_autoformat = true
                end
            end, {
                desc = "Disable autoformat-on-save",
                bang = true,
            })
            vim.api.nvim_create_user_command("FormatEnable", function()
                vim.b.disable_autoformat = false
                vim.g.disable_autoformat = false
            end, {
                desc = "Re-enable autoformat-on-save",
            })
        end,
    },
}
