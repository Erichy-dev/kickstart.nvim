return {
  'iamcco/markdown-preview.nvim',
  cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
  build = 'cd app && yarn install',
  init = function()
    vim.g.mkdp_filetypes =
      { 'markdown' },
      -- Keymaps for Markdown preview
      vim.keymap.set('n', '<leader>mp', '<cmd>MarkdownPreview<CR>', { desc = 'preview markdown file' }),
      vim.keymap.set('n', '<leader>ms', '<cmd>MarkdownPreviewStop<CR>', { desc = 'preview markdown file' })
  end,
  ft = { 'markdown' },
}
