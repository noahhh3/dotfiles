return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    otps_extend = { "ensure_installed" },

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
        },
    },
}
