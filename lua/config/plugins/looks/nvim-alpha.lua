return{
    "goolord/alpha-nvim",
    -- dependencies = { "echasnovski/mini.icons" },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")

        -- Header
        dashboard.section.header.val = {
             [[          ▀████▀▄▄              ▄█ ]],
             [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
             [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
             [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
             [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
             [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
             [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
             [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
             [[   █   █  █      ▄▄           ▄▀   ]],
        }

        -- Buttons (New File + Notes)
        dashboard.section.buttons.val = {
                { type = "text", val = "______Menu______", opts = { position = "center", hl = "Title" } },
                dashboard.button("e", "📄 New File", ":ene | startinsert <CR>"),
                dashboard.button("n", "📝 New Note", ":e ~/Documents/Notes/temp_notes/note_" .. os.date("%Y-%m-%d_%H-%M") .. ".md | cd ~/Documents/Notes<CR>"),
                dashboard.button("t", "📂 File Explorer", ":NvimTreeToggle<CR>"),
                dashboard.button("r", "🔍 Search Files", ":Telescope find_files<CR>"),
            -- dashboard.button("sn", "📂 Search Notes Directory", ":lua OpenNvimTreeCWD(\"~/Documents/Notes\")<CR>"),
        }

        -- Git Repo Section
        dashboard.section.go_to = {
            type = "group",
            val = {
                { type = "text", val = "______CheckPoints______", opts = { position = "center", hl = "Title" } },
                { type = "padding", val = 1 },
                dashboard.button("sd", "📂 Choose Directory", ":lua change_to_WD()<CR>"),
                { type = "padding", val = 1 },
                dashboard.button("gp", "📂 Projects", ":cd ~/Documents/Projects<CR>"),
                { type = "padding", val = 1 },
                dashboard.button("gn", "📂 Notes", ":cd ~/Documents/Notes<CR>"),
                { type = "padding", val = 1 },
                dashboard.button("gd", "📂 Return To Start Directory", ":lua return_to_firstWD()<CR>"),
                { type = "padding", val = 1 },
            },
            opts = { position = "center"}, 
        }

        -- Settings
        dashboard.section.settings = {
            type = "group",
            val = {
                -- dashboard.button("r", "🔍 Search Git Repos", ":Telescope find_files cwd=~/git_repos<CR>"),
                { type = "text", val = "______Options______", opts = { position = "center", hl = "Title" } },
                { type = "padding", val = 1 },
                dashboard.button("sc", " Lazy", ":Lazy<CR>"),
                { type = "padding", val = 1 },
                dashboard.button("sc", " Settings", ":e ~/.config/nvim/init.lua | cd ~/.config/nvim<CR>"),
                { type = "padding", val = 1 },
                dashboard.button("ss", "🔍 Search Settings Directory", ":cd ~/.config/nvim | Telescope find_files cwd=~/.config/nvim<CR>"),
                { type = "padding", val = 1 },
                dashboard.button("q", "❌ Quit Neovim", ":qa<CR>")
            },
            opts = { position = "left"},
        }
        
        vim.opt.fillchars:append("eob: ")

        -- Combine Layout
        dashboard.opts.layout = {
            { type = "padding", val = 1 },
            dashboard.section.header,
            { type = "padding", val = 1 },
            dashboard.section.buttons,
            { type = "padding", val = 1 },
            dashboard.section.go_to,
            { type = "padding", val = 1 },
            dashboard.section.settings,
            { type = "padding", val = 1 },
        }


        -- Apply Dashboard
        alpha.setup(dashboard.opts)
end,
}
