return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup {
      flavour = 'mocha',
      transparent_background = true,
      term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = true, -- dims the background color of inactive window
        shade = 'dark',
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
      },
      contrast = {
        floating_windows = true,
        terminal = true,
        sidebars = true,
        lsp_virtual_text = true,
      },
      styles = {
        comments = { 'italic' }, -- Change the style of comments
        conditionals = { 'italic' },
        loops = { 'italic' },
        functions = { 'italic' },
        keywords = { 'italic' },
        --       strings = { 'bold' },
      },
      integrations = {
        colorful_winsep = {
          enabled = true,
          color = 'red',
        },
        fidget = true,
        harpoon = true,
        lsp_saga = true,
        neotest = true,
        noice = true,
        mason = true,
        telescope = {
          enabled = true,
          style = 'nvchad',
        },
        vim_sneak = true,
        lsp_trouble = true,
        which_key = true,
        notify = true,
      },
    }

    vim.cmd.colorscheme 'catppuccin'
  end,
}
