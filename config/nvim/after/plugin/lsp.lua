local lspconfig = require("lspconfig")
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.gopls.setup{
    capabilities = capabilities
}

lspconfig.rust_analyzer.setup{
    capabilities = capabilities,
    settings = {
        ['rust-analyzer'] = {
            checkOnSave = {
                allFeatures = true,
                overrideCommand = {
                    'cargo', 'clippy', '--workspace', '--message-format=json',
                    '--all-targets', '--all-features'
                }
            }
        }
    }
}

lspconfig.tsserver.setup{
    capabilities = capabilities
}

lspconfig.pyright.setup{
    capabilities = capabilities
}
