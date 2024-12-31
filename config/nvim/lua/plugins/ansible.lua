return {
  recommended = function()
    return LazyVim.extras.wants({
      ft = "yaml.ansible",
      root = { "ansible.cfg", ".ansible-lint" },
    })
  end,
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = { "ansible-lint" } },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ansiblels = {},
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters_by_ft = {
        yaml = { "ansible_lint" },
      },
    },
  },
}
