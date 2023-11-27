return {
  "heavenshell/vim-pydocstring",
  lazy = false,
  config = function()
    vim.g.pydocstring_doq_path = '/Users/sanek/.pyenv/shims/doq'
    vim.g.pydocstring_formatter = 'numpy'
    vim.g.pydocstring_ignore_init = 1
  end,
}
