return {
    {
        "neovim/nvim-lspconfig",
    },

    {
        "williamboman/mason.nvim",
        cmd = "Mason",
        keys = {
            { "<leader>cm", "<cmd>Mason<cr>", desc = "Mason" },
        },
    },
}
