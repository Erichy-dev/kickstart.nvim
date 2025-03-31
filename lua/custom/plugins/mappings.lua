local M = {}

function M.setup()
  -- Add blank line below (like 'o' but stays in Normal mode)
  vim.keymap.set('n', '<leader>o', function()
    local row = vim.api.nvim_win_get_cursor(0)[1]
    vim.api.nvim_buf_set_lines(0, row, row, true, { '' })
  end, { desc = 'Add blank line below (no insert)' })

  -- Add blank line above (like 'O' but stays in Normal mode)
  vim.keymap.set('n', '<leader>O', function()
    local row = vim.api.nvim_win_get_cursor(0)[1] - 1
    vim.api.nvim_buf_set_lines(0, row, row, true, { '' })
  end, { desc = 'Add blank line above (no insert)' })
end

return M
