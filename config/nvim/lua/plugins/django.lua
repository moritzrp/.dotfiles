return {
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "djlint" } },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        django = { "djlint" },
        jinja = { "djlint" },
        htmldjango = { "djlint" },
        css = { "prettier" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        django = { "djlint" },
        jinja = { "djlint" },
        htmldjango = { "djlint" },
      },
    },
  },
}
