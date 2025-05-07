return {
  'ellisonleao/gruvbox.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('gruvbox').setup {
      transparent_mode = true,
    }
    vim.cmd.colorscheme 'gruvbox'
    vim.cmd [[
        highlight Normal guibg=none
        highlight Normal ctermbg=none
      ]]
  end,
}
