return {
  {
    "kelly-lin/ranger.nvim",
    event = "VeryLazy",
    config = function()
      require("ranger-nvim").setup({
        replace_netrw = true,
        ui = {
          height = 0.9,
          width = 0.9,
          border = "single",
        },
      })
    end,
  },
}
