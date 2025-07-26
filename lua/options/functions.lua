local api_nvim_tree = require("nvim-tree.api")
local cwd = vim.fn.getcwd()
local notes_dir = "~/Documents/Notes"
local notes_dir_expand = vim.fn.expand(notes_dir)
local notes_temp_dir = "~/Documents/Notes/temp_notes"
local notes_temp_dir_expand = vim.fn.expand(notes_temp_dir)

local current_buffer = vim.api.nvim_get_current_buf()

function is_buffer_empty()
    local lines = vim.api.nvim_buf_get_lines(current_buffer, 0, -1, false)
    return #lines == 0
end

function return_to_buffer()
    if is_buffer_empty() then
        vim.cmd("b" .. current_buffer)
        vim.cmd("bd")
    end
end

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
    end
end

local function dir_has_files(dir)
    local expand = vim.fn.expand(dir)
    local hasFiles = vim.fn.readdir(expand)

    return #hasFiles > 0, hasFiles
end

function review_notes()
    local review_bool = vim.fn.inputlist({"Do you want to review your notes:", "1. Yes", "2. No"})
    local hasFiles, files = dir_has_files(notes_temp_dir_expand)
    if review_bool ~= 1 then
       print("Dont forget to review later") 
       return
    end
    if hasFiles then
        print("Review notes!!! \nList of files:\n")
        vim.cmd("enew")
        for i, file in ipairs(files) do
            local notes_expand = notes_temp_dir_expand .. "/" .. file
            print(i .. ". " .. notes_expand)
            vim.cmd("edit " .. notes_expand)
        end

        vim.api.nvim_command("autocmd BufDelete * lua return_to_buffer()")
    else
        print("Dont review notes")
    end
end

function check_unsaved_files()
    local buffers = vim.api.nvim_list_bufs()

    for _, buf in ipairs(buffers) do
        if vim.api.nvim_buf_is_loaded(buf) and vim.api.nvim_buf_get_option(buf, 'modified') then
            vim.notify("You have unsaved changes!", vim.log.levels.WARN)
            return
        end
    end

    vim.notify("No unsaved changes", vim.log.levels.INFO)
end

function test()

end
 
