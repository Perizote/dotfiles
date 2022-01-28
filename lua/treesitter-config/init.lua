--> Neorg parser configs
local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg",
        files = { "src/parser.c", "src/scanner.cc" },
        branch = "main"
    },
}

parser_configs.norg_meta = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
        files = { "src/parser.c" },
        branch = "main"
    },
}

parser_configs.norg_table = {
    install_info = {
        url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
        files = { "src/parser.c" },
        branch = "main"
    },
}

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
    'markdown',
    'norg',
    'norg_meta',
    'norg_table'
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
