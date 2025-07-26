local remap_dir = vim.fn.stdpath("config") .. "/lua/remap"

for _, file in ipairs(vim.fn.readdir(remap_dir)) do
    if file:match("%.lua$") and file ~= "init.lua" then
        require("remap." .. file:sub(1, -5))
    end
end
