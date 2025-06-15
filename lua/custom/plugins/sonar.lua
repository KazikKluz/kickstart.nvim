return {
  'https://gitlab.com/schrieveslaach/sonarlint.nvim',
  ft = { 'javascript', 'typescript', 'java', 'cpp', 'python' }, -- Adjust for your languages
  dependencies = { 'williamboman/mason.nvim' },
  config = function()
    require('sonarlint').setup {
      server = {
        cmd = {
          'sonarlint-language-server',
          '-stdio',
          '-analyzers',
          vim.fn.stdpath 'data' .. '/mason/share/sonarlint-analyzers/sonarjava.jar',
          vim.fn.stdpath 'data' .. '/mason/share/sonarlint-analyzers/sonarcfamily.jar',
          vim.fn.stdpath 'data' .. '/mason/share/sonarlint-analyzers/sonarjs.jar',
          vim.fn.stdpath 'data' .. '/mason/share/sonarlint-analyzers/sonarpython.jar',
        },
      },
      filetypes = {
        'javascript',
        'typescript',
        'javascriptreact',
        'typescriptreact',
        'java',
        'cpp',
        'python',
      },
    }
  end,
}
