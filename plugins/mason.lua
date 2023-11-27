-- customize mason plugins
-- local lspconfig = require('lspconfig')

return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`

    -- overrides = require('mason-lspconfig').setup_handlers({
    --   function(server_name)
    --     local server_config = {}
    --     if server_name == "volar" then
    --       server_config.filetypes = { 'vue', 'typescript', 'javascript' }
    --     end
    --     lspconfig[server_name].setup(server_config)
    --   end,
    -- }),
    opts = {
      -- ensure_installed = { "lua_ls" },
      -- ensure_installed = { "volar", "tsserver" }
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      -- ensure_installed = { "prettier", "stylua" },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      -- ensure_installed = { "python" },
    },
  },
}
