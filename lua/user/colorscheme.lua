local colorscheme = "gruvbox-material"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups
    -- see :help highlight-groups
    "NormalFloat",
    "FloatBorder",
    "Pmenu",
    "PmenuSbar",
    "TabLineFill"
  },
  exclude = {}, -- table: groups you don't want to clear
})
