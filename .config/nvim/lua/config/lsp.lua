require("mason").setup()

local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config("*", { capabilities = capabilities })

local servers = {
    "clangd",
    "jdtls",
    "pyright",
    "texlab",
}

for _, server in ipairs(servers) do
    vim.lsp.enable(server)
end

vim.diagnostic.config({
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN] = "",
            [vim.diagnostic.severity.HINT] = "",
            [vim.diagnostic.severity.INFO] = "",
        },
    },
})
