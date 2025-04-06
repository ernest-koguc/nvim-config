return {
  'github/copilot.vim',
  conig = function()
    vim.g.copilot_settings = { selectedCompletionModel = 'gpt-4o-copilot' }
  end,
}
