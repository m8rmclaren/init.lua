local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)

  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers

require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {
	  'tsserver', 
	  'rust_analyzer',
	  'dockerls',
	  'docker_compose_language_service',
	  'eslint',
	  'gopls',
	  'helm_ls',
	  'lua_ls',
	  'tailwindcss',
	  'yamlls'

  },
  handlers = {
    lsp_zero.default_setup,
  },
})
