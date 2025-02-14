local options_dir = vim.fn.stdpath("config") .. "/lua/options"

for _, file in ipairs(vim.fn.readdir(options_dir)) do
    if file:match("%.lua$") and file ~= "init.lua" then
        require("options." .. file:sub(1, -5))
    end
end
