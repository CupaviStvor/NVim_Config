return{
  "hrsh7th/nvim-cmp",  -- Main completion plugin
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",    -- LSP source
    "hrsh7th/cmp-buffer",       -- Buffer source
    "hrsh7th/cmp-path",         -- Path source
    "hrsh7th/cmp-cmdline",      -- Cmdline source
    "L3MON4D3/LuaSnip",         -- Snippet engine
    "saadparwaiz1/cmp_luasnip", -- Snippet source for nvim-cmp
  },
  config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body) -- Use LuaSnip for snippets
          end,
        },
        mapping = {
          ["<C-k>"] = cmp.mapping.select_prev_item(),
          ["<C-j>"] = cmp.mapping.select_next_item(),
          ["<C-K>"] = cmp.mapping.scroll_docs(-4),
          ["<C-J>"] = cmp.mapping.scroll_docs(4),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<C-Space>"] = cmp.mapping.complete(),
        },
        sources = {
          { name = "nvim_lsp" },   -- LSP source for completion
          { name = "buffer" },     -- Buffer source for completion
          { name = "path" },       -- Path source for completion
        },
      })
    end,
}

