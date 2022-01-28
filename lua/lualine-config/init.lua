require'lualine'.setup{
  options = {
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    theme = "nightfox",
  },
  sections = {
    lualine_c = {
      {'filename', path = 1}
    },
    lualine_x = {'filetype'},
  },
}
