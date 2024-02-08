local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local util = require "lspconfig/util"
vim.g.rustaceanvim = {
  inlay_hints = {
    highlight = "NonText",
  },
  tools = {
    hover_actions = {
      auto_focus = true,
    },
  },
  server = {
    on_attach = function(client, bufnr)
      on_attach(client, bufnr)
      require("lsp-inlayhints").on_attach(client, bufnr)
    end,
    capabilities = capabilities,
    filetypes = { "rust" },
    root_dir = util.root_pattern "Cargo.toml",
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
        },
      },
    },
  },
}
