return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
          -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        keys = {
            {
                "<leader>fe",
                function ()
                    require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
                end,
                desc = "Explorer NeoTree(cwd)",
            },
            {
              "<leader>be",
              function()
                require("neo-tree.command").execute({ source = "buffers", toggle = true })
              end,
              desc = "Buffer Explorer",
            },
        },
        config = function(_,_)
            require("neo-tree").setup{}
        end
    },
}
