return {
  "nvim-neorg/neorg",
  dependencies = { "nvim-lua/plenary.nvim" },
  build = ":Neorg sync-parsers",
  -- tag = "*",
  lazy = true, -- enable lazy load
  ft = "norg", -- lazy load on file type
  cmd = "Neorg", -- lazy load on command
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.journal"] = {},
        ["core.keybinds"] = {},
        ["core.export"] = {},
        ["core.summary"] = {},
        ["core.integrations.treesitter"] = {},
        ["core.tangle"] = {},
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
              tickets = "~/notes/tickets",
            },
            index = "index.norg",
          },
        },
      },
    })
  end,
}
