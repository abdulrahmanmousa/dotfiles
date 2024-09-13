-- You can add your own plugins here or in other files in this directory!

return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
      require('neo-tree').setup {
        window = {
          position = 'right',
        },
        filesystem = {
          follow_current_file = {
            enabled = true,
            leave_dirs_open = false,
          },
        },
        buffers = { follow_current_file = { enable = true } },
      }
    end,
  },
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = '<Tab>',
          },
        },
      }
      vim.cmd 'copilot disable'
    end,
  },
  {
    'windwp/nvim-ts-autotag',
    opts = {},
  },
  {
    'williamboman/mason.nvim',
    opts = { ensure_installed = { 'prettier' } },
  },
  {
    'MunifTanjim/prettier.nvim',
    filetypes = { 'javascript', 'go', 'golang', 'typescript', 'typescriptreact', 'javascriptreact', 'html', 'css', 'json', 'yaml', 'markdown' },
    bin = 'prettier',

    config = function()
      require('prettier').setup {
        print_width = 80,
        tab_width = 2,
        use_tabs = false,
        single_quote = false,
        trailing_comma = 'all',
        config_precedence = 'prefer-file',
        bracket_spacing = true,
        jsx_bracket_same_line = false,
        arrow_parens = 'avoid',
        prose_wrap = 'preserve',
        semi = true,
        overrides = {},
      }
    end,
  },
}
