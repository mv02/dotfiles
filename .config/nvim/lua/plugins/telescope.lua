local builtin = require("telescope.builtin")

return {
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" },
        cmd = "Telescope",
        keys = {
            { "<leader>fb", builtin.buffers },
            { "<leader>ff", builtin.find_files },
            { "<leader>fF", builtin.git_files },
            { "<leader>fr", builtin.oldfiles },
            { "<leader>ft", builtin.filetypes },
            { "<leader>gb", builtin.git_branches },
            { "<leader>gc", builtin.git_bcommits },
            { "<leader>gC", builtin.git_commits },
            { "<leader>gs", builtin.git_status },
            { "<leader>gS", builtin.git_stash },
            { "<leader>sb", builtin.current_buffer_fuzzy_find },
            { "<leader>sc", builtin.command_history },
            { "<leader>sC", builtin.commands },
            { "<leader>sd", builtin.lsp_definitions },
            { "<leader>sg", builtin.live_grep },
            { "<leader>sh", builtin.help_tags },
            { "<leader>sH", builtin.search_history },
            { "<leader>si", builtin.lsp_implementations },
            { "<leader>sm", builtin.marks },
            { "<leader>sM", builtin.man_pages },
            { "<leader>so", builtin.vim_options },
            { "<leader>sr", builtin.lsp_references },
            { "<leader>sR", builtin.registers },
            { "<leader>ss", builtin.lsp_document_symbols },
            { "<leader>sS", builtin.lsp_workspace_symbols },
            { "<leader>sw", builtin.grep_string },
            { "<leader>s`", builtin.resume },
        },
        opts = {
            pickers = {
                man_pages = {
                    sections = { "ALL" },
                },
            },
        },
    },
}
