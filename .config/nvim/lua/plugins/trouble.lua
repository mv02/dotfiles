return {
    {
        "folke/trouble.nvim",
        cmd = "Trouble",
        keys = {
            { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>" },
            { "<leader>xr", "<cmd>Trouble lsp_references toggle<cr>" },
            { "<leader>xs", "<cmd>Trouble lsp_document_symbols toggle<cr>" },
            { "<leader>xS", "<cmd>Trouble symbols toggle<cr>" },
            { "<leader>xq", "<cmd>Trouble quickfix toggle<cr>" },
            { "<leader>xl", "<cmd>Trouble loclist toggle<cr>" },
        },
        opts = {
            indent_lines = false,
            auto_close = true,
            auto_preview = false,
            use_diagnostic_signs = true,
        },
        config = function(_, opts)
            local trouble = require("trouble")
            trouble.setup(opts)

            vim.api.nvim_set_hl(0, "TroubleNormal", { bg = "NONE" })
            vim.api.nvim_set_hl(0, "TroubleNormalNC", { bg = "NONE" })

            vim.api.nvim_create_autocmd("QuickFixCmdPost", {
                callback = function()
                    trouble.open("quickfix")
                end,
            })
        end,
    },
}
