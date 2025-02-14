return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview"},
  build = function()
    vim.fn["mkdp#util#install"]()
  end,
  config = function ()
      vim.cmd("doautocmd BufRead")
  end
}
