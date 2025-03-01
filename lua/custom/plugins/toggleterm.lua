-- toggleterm.lua
return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      -- size can be a number or function which is passed the current terminal
      size = function(term)
        if term.direction == 'horizontal' then
          return 15
        elseif term.direction == 'vertical' then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<c-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
      hide_numbers = true, -- hide the number column in toggleterm buffers
      shade_filetypes = {},
      autochdir = false, -- when neovim changes its current directory, the terminal will change its own when next opened
      highlights = {
        -- Example valid highlight colors
        Normal = {
          guibg = '#1f2335', -- Example: Background color for the terminal
        },
        NormalFloat = {
          link = 'Normal', -- Link to the Normal highlight group
        },
        FloatBorder = {
          guifg = '#7aa2f7', -- Example: Border color for floating terminals
          guibg = '#1f2335', -- Example: Background color for floating terminals
        },
      },
      shade_terminals = true, -- NOTE: this option takes priority over highlights specified
      shading_factor = -30, -- the percentage by which to lighten terminal background, default: -30
      start_in_insert = true,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      persist_size = true,
      persist_mode = true, -- if set to true (default) the previous terminal mode will be remembered
      direction = 'float', -- 'vertical' | 'horizontal' | 'tab' | 'float'
      close_on_exit = true, -- close the terminal window when the process exits
      shell = vim.o.shell, -- change the default shell
      auto_scroll = true, -- automatically scroll to the bottom on terminal output
      float_opts = {
        border = 'curved', -- 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
        width = 120,
        height = 30,
        winblend = 3,
        zindex = 1,
      },
      winbar = {
        enabled = false,
        name_formatter = function(term) -- term: Terminal
          return term.name
        end,
      },
    }
  end,
}
