return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    { "nvim-lua/plenary.nvim" },
    { "BurntSushi/ripgrep" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  config = function()
    require("telescope").setup({
      extensions = {
        fzf = {},
      },
    })

    require("telescope").load_extension("fzf")

    vim.keymap.set("n", "<space>fh", require("telescope.builtin").help_tags)
    vim.keymap.set("n", "<space>fg", require("telescope.builtin").live_grep)
    vim.keymap.set("n", "<space>ff", require("telescope.builtin").find_files)
  end,
}
