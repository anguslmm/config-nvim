vim.o.timeout = true
vim.o.timeoutlen = 300
local wk = require("which-key")
wk.setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}

wk.register({
        -- r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"}, -- additional options for creating the keymap
        f = { name = "Find files" },
}, { prefix = "<leader>" })

wk.register({
        -- r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"}, -- additional options for creating the keymap
        h = { name = "Git operations" },
}, { prefix = "<leader>" })

wk.register({
        -- r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File"}, -- additional options for creating the keymap
        w = { name = "Window operations" },
}, { prefix = "<leader>" })
