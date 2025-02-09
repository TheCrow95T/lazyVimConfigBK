return {
  {
    "numToStr/FTerm.nvim",
    event = "VeryLazy",
    config = function()
      require("FTerm").setup({
        border = "double",
        dimensions = {
          height = 0.9,
          width = 0.9,
        },
      })
    end,
  },
}
