return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons"},
    --require('lualine.nvim').setup()
    config = function()
        require("lualine").setup()
    end
}
