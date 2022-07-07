local saga = require 'lspsaga'

-- use default config
saga.init_lsp_saga({
  border_style = "single",
  symbol_in_winbar = {
    in_custom = false,
    etrue,
    separator = ' ',
    show_file = true,
    click_support = false,
  },
})

