return {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",

    opts = {
        highlight = { enable = true },
        indent = { enable = true },
        ensure_installed = {
            "c",
            "vim",
            "vimdoc",
            "json",
            "jsonc",
            "lua",
            "luadoc",
            "luap",
            "luau",
            "go",
            "python",
        },
        auto_install = true,
        sync_install = true
    },
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
}
