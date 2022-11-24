require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    'lua',
    'css',
    'python',
    'typescript',
    'html',
    'javascript',
    'json',
    'dockerfile',
    'markdown'
  },
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  --> refactor module
  refactor = {
    highlight_definitions = { enable = true },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = "grr",
      },
    },
  },
  --> nvim-ts-autotag module
  autotag = { enable = true },
  --> nvim-ts-context-commentstring module
  context_commentstring = {
    enable = true,
  }
}
