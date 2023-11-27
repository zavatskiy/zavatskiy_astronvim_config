return {
  "jose-elias-alvarez/null-ls.nvim",
  debug = true,
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- custom sources
    local h = require 'null-ls.helpers'

    local blackd = {
      name = 'blackd',
      method = null_ls.methods.FORMATTING,
      filetypes = { 'python' },
      generator = h.formatter_factory {
        command = 'blackd-client',
        args = { '--line-length', '79' },
        to_stdin = true,
      },
    }

    local pylint = null_ls.builtins.diagnostics.pylint.with(
      {
        -- command = vim.fn.system(get_pylint_path()):gsub("[\n]", ""),
        env = function(params)
          return { PYTHONPATH = params.root }
        end,
      }
    )

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      pylint,
      blackd,
      -- null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettierd,
      null_ls.builtins.diagnostics.eslint_d,
      null_ls.builtins.code_actions.eslint_d,
      null_ls.builtins.formatting.eslint_d,
    }
    return config -- return final config table
  end,
}
