local M = {}

M.treesitter = {
    auto_install = true,
    indent = {
        enable = true,
        -- disable = {
        --   "python"
        -- },
    },
}

M.mason = {
    ensure_installed = {
        -- lua stuff
        "lua-language-server",
        "stylua",

        -- web dev stuff
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",
        "prettier",

        -- c/cpp stuff
        "clangd",
        "clang-format",

        -- rust stuff
        "rust-analyzer",

        -- python stuff
        "pyright",
        "black",
    },
}

-- git support in nvimtree
M.nvimtree = {
    git = {
        enable = true,
        ignore = false,
    },

    renderer = {
        highlight_git = true,
        highlight_diagnostics = true,
        full_name = true,
        group_empty = true,
        highlight_opened_files = "icon",
        icons = {
            show = {
                git = true,
            },
        },
    },
}

return M
