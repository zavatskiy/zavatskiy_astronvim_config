return {
  {
    "goolord/alpha-nvim",
    opts = function(_, opts) -- override the options using lazy.nvim
      local button = require("astronvim.utils").alpha_button
      opts.section.buttons.val = {
        button("LDR n", "  New File  "),
        button("LDR f f", "  Find File  "),
        button("LDR f o", "  Recents  "),
        button("LDR f p", "󱠒  Projects  "),
        button("LDR f w", "  Find Word  "),
        button("LDR f '", "  Bookmarks  "),
        button("LDR S l", "  Last Session  "),
      }
    end,
  },
}
