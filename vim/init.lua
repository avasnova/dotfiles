
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
  {
    "3rd/image.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("image").setup({
        backend = "kitty", -- or "ueberzug" if you want
        integrations = {
          markdown = {
            enabled = true,
          },
        },
      })
    end,
  },
})

