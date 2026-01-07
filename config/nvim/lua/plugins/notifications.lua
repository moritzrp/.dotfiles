-- disable timeout so notifications stay until manually dismissed
local disable_timeout = false
if disable_timeout then
  return {
    "folke/noice.nvim",
    opts = {
      views = {
        notify = {
          timeout = 0,
        },
      },
    },
  }
else
  return {}
end
