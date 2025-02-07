local c = require("solarized-osaka.colors").setup({ transform = true })

local M = {
  normal = { bg = c.none, fg = c.base0 },

  ellipsis = { fg = c.dark5 },
  separator = { fg = c.dark5 },
  modified = { fg = c.warning },

  dirname = { fg = c.dark5 },
  basename = { fg = c.base0, bold = true },
  context = { fg = c.base0 },

  context_file = { fg = c.base0 },
  context_module = { fg = c.yellow },
  context_namespace = { fg = c.yellow },
  context_package = { fg = c.blue },
  context_class = { fg = c.orange },
  context_method = { fg = c.blue },
  context_property = { fg = c.green500 },
  context_field = { fg = c.green500 },
  context_constructor = { fg = c.blue },
  context_enum = { fg = c.orange },
  context_interface = { fg = c.orange },
  context_function = { fg = c.blue },
  context_variable = { fg = c.magenta },
  context_constant = { fg = c.magenta },
  context_string = { fg = c.green },
  context_number = { fg = c.orange },
  context_boolean = { fg = c.orange },
  context_array = { fg = c.orange },
  context_object = { fg = c.orange },
  context_key = { fg = c.purple },
  context_null = { fg = c.blue1 },
  context_enum_member = { fg = c.green500 },
  context_struct = { fg = c.orange },
  context_event = { fg = c.orange },
  context_operator = { fg = c.green500 },
  context_type_parameter = { fg = c.green500 },
}

return M
