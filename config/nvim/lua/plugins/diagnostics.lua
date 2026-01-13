return {
  "neovim/nvim-lspconfig",
  opts = {
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    servers = {
      basedpyright = {
        settings = {
          basedpyright = {
            analysis = {
              -- ignore = { "*" },
              typeCheckingMode = "standard",
            },
          },
        },
      },
    },
  },
}
