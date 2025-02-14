local api_nvim_tree = require("nvim-tree.api")
local cwd = vim.fn.getcwd()

local function open_nvim_tree_popup()
  -- Define the popup window size and position
  local width = math.floor(vim.o.columns * 0.6)
  local height = math.floor(vim.o.lines * 0.6)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  -- Create a new floating window
  local buf = vim.api.nvim_create_buf(false, true) -- Create a scratch buffer
  local win = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded"
  })

end

function return_to_firstWD()
    vim.cmd("cd " .. cwd)
end

function change_to_WD()
    local dir = vim.fn.input("Directory: ");
    if dir and vim.fn.isdirectory(vim.fn.expand(dir)) == 1 then
        vim.cmd("cd " .. dir)
    else
        print("Invalid dir!")
    end
end


