return {
  "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({ background = { dark = "dragon" } })
    vim.cmd("colorscheme kanagawa")
  end,
}
