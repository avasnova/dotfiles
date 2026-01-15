local vimrc_home = vim.fn.expand("~/.vimrc")
if vim.fn.filereadable(vimrc_home) == 1 then
  vim.cmd("source " .. vimrc_home)
end

vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
  {
    "3rd/image.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("image").setup({
        backend = "kitty",
        integrations = {
          markdown = {
            enabled = true,
          },
        },
      })
    end,
  },
})

