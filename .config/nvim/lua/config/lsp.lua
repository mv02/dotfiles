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

local signs = { Error = "", Warn = "", Hint = "", Info = "" }

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end
