return{
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
    require("harpoon"):setup()
    end,
    keys = {
        { "<leader>F", function() require("harpoon"):list():add() end, desc = "harpoon file", },
        { "<leader>f", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
        { "<leader>q", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
        { "<leader>w", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
        { "<leader>e", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
        { "<leader>a", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
        { "<leader>s", function() require("harpoon"):list():select(5) end, desc = "harpoon to file 5", },
        { "<leader>d", function() require("harpoon"):list():select(6) end, desc = "harpoon to file 6", },
    },  
}

