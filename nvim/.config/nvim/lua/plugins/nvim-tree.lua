return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        opt = true
    },
    opts = function()
        require("nvim-tree").setup({})
    end,
}
