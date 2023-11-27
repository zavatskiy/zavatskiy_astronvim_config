-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    ["<leader>fp"] = { "<cmd>Telescope projects<cr>", desc = "Find projects" },
    ["<leader>fl"] = { "<cmd>Telescope quickfix<cr>", desc = "Find in quickfix" },
    ["<leader>S"] = {
      function()
        require("spectre").open()
      end,
      desc = "Open Spectre",
    },
    ["<leader>s"] = { name = " Spectre" },
    ["<leader>sw"] = {
      function()
        require("spectre").open_visual({ select_word = true })
      end,
      desc = "Search current word",
    },
    ["<leader>sp"] = {
      function()
        require("spectre").open_file_search({ select_word = true })
      end,
      desc = "Search on current file",
    },
    ["<leader>_"] = { "<cmd>Pydocstring<cr>", desc = "Pydocstring" },
    ["<leader>n"] = { name = "󰙆 Neogen" },
    ["<leader>nd"] = {
      function()
        require('neogen').generate({ type = 'func' })
      end,
      desc = "Generate annotations for the current function",
    },
    ["<leader>nc"] = {
      function()
        require('neogen').generate({ type = 'class' })
      end,
      desc = "Generate annotations for the current class",
    },
    ["<leader>nt"] = {
      function()
        require('neogen').generate({ type = 'type' })
      end,
      desc = "Generate annotations for the current type",
    },
    ["<leader>nf"] = {
      function()
        require('neogen').generate({ type = 'file' })
      end,
      desc = "Generate annotations for the current file",
    },
  },
  v = {
    ["<leader>sw"] = {
      function()
        require("spectre").open_visual()
      end,
      desc = "Search on current word",
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
