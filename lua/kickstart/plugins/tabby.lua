return {
  'nanozuki/tabby.nvim',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    vim.keymap.set('n', '<leader>tt', ':Tabby jump_to_tab<Enter>', { desc = 'Jump [T]o [T]ab' })
    vim.keymap.set('n', '<leader>tn', ':tabnew<Enter>', { desc = '[T]ab [N]ew' })
    vim.o.showtabline = 2
    vim.api.nvim_set_hl(0, 'TabLineSel', { bg = '#1d8b67', bold = true })

    require('tabby').setup {
      preset = 'tab_only',
      option = {
        theme = {
          fill = 'TabLineFill', -- tabline background
          head = 'TabLine', -- head element highlight
          current_tab = 'TabLineSel', -- current tab highlight
          tab = 'TabLine', -- other tab label highlight
          win = 'TabLine', -- window highlight
          tail = 'TabLine', -- tail element highlight
        },
        nerdfont = true, -- whether use nerdfont
        lualine_theme = nil, -- lualine theme name
        buf_name = {
          mode = 'unique',
        },
      },
    }
  end,
}
