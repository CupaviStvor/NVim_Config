return{
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'kyazdani42/nvim-web-devicons',
    },
    config = function()
        require("nvim-tree").setup({
            disable_netrw = false,
            hijack_netrw = false,     -- Don't replace netrw
            respect_buf_cwd = true,   -- Keep directory tracking behavior
            view = {
                width = 30,
                side="left",
            }
        })
    end,
}

