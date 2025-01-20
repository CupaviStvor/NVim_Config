return{
  "neovim/nvim-lspconfig",
  config = function()
    -- Set up clangd for C language
    require('lspconfig').clangd.setup{}
    
    -- Set up HTML language server
    require('lspconfig').html.setup{}
  end,
}
