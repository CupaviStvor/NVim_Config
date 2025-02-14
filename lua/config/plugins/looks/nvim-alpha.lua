return{
    "goolord/alpha-nvim",
    -- dependencies = { 'echasnovski/mini.icons' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require('alpha')
        local dashboard = require('alpha.themes.dashboard')

        -- Header
        dashboard.section.header.val = {
            "███╗   ██╗██╗   ██╗██╗███╗   ███╗",
            "████╗  ██║██║   ██║██║████╗ ████║",
            "██╔██╗ ██║██║   ██║██║██╔████╔██║",
            "██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
            "██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
            "╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
        }

        -- Buttons (New File + Notes)
        dashboard.section.buttons.val = {
            { type = "text", val = "______Menu______", opts = { position = "center", hl = "Title" } },
            dashboard.button("e", "📄 New File", ":ene | startinsert <CR>"),
            dashboard.button("n", "📝 New Note", ":e ~/Documents/Notes/temp_notes/note_" .. os.date('%Y-%m-%d_%H-%M') .. ".md<CR>"),
            dashboard.button("t", "📂 File Explorer", ":NvimTreeToggle<CR>"),
            dashboard.button("r", "🔍 Search Files", ":Telescope find_files<CR>"),
            -- dashboard.button("sn", "📂 Search Notes Directory", ":lua OpenNvimTreeCWD(\"~/Documents/Notes\")<CR>"),
        }

        -- Git Repo Section
        dashboard.section.git_repos = {
            type = "group",
            val = {
                { type = "text", val = "______Git______", opts = { position = "center", hl = "Title" } },
                { type = "padding", val = 1 },
                dashboard.button("r", "🔍 Search Git Repos", ":Telescope find_files cwd=~/Documents/Projects<CR>"),
            },
            opts = { position = "center" }
        }

        -- Settings
        dashboard.section.settings = {
            type = "group",
            val = {
                -- dashboard.button("r", "🔍 Search Git Repos", ":Telescope find_files cwd=~/git_repos<CR>"),
                { type = "text", val = "______Options______", opts = { position = "center", hl = "Title" } },
                { type = "padding", val = 1 },
                dashboard.button("sc", "⚙️ Settings", ":e ~/.config/nvim/init.lua<CR>"),
                { type = "padding", val = 1 },
                dashboard.button("ss", "🔍 Search Settings Directory", ":Telescope find_files cwd=~/.config/nvim<CR>"),
                { type = "padding", val = 1 },
                dashboard.button("q", "❌ Quit Neovim", ":qa<CR>")
            },
            opts = { position = "center" }
        }
        
        vim.opt.fillchars:append("eob: ")

        -- Combine Layout
        dashboard.opts.layout = {
            { type = "padding", val = 1 },
            dashboard.section.header,
            { type = "padding", val = 1 },
            dashboard.section.buttons,
            { type = "padding", val = 1 },
            dashboard.section.git_repos,
            { type = "padding", val = 1 },
            dashboard.section.settings,
        }


        -- Apply Dashboard
        alpha.setup(dashboard.opts)
end,
}
