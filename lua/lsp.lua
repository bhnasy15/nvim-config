
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, { noremap=true, silent=true })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { noremap=true, silent=true })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { noremap=true, silent=true })
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, { noremap=true, silent=true })

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>Wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>Wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>Wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  --vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<space>c', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<space>f', vim.lsp.buf.format, bufopts)
end

-- local lsp_flags = {
  -- -- This is the default in Nvim 0.7+
  -- debounce_text_changes = 150,
-- }
-- Add additional capabilities supported by nvim-cmp
local capabilities = vim.lsp.protocol.make_client_capabilities();
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities);

local lspconfig = require('lspconfig');

-- luasnip setup
local luasnip = require('luasnip');

-- nvim-cmp setup
local cmp = require'cmp'

cmp.setup({
snippet = {
  -- REQUIRED - you must specify a snippet engine
  expand = function(args)
	--vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
	luasnip.lsp_expand(args.body) -- For `luasnip` users.
	-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
	-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
  end,
},
window = {
  -- completion = cmp.config.window.bordered(),
  -- documentation = cmp.config.window.bordered(),
},
mapping = cmp.mapping.preset.insert({
	['<C-b>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	['<C-Space>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.abort(),
	['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	['<Tab>'] = cmp.mapping(function(fallback)
	  if cmp.visible() then
		cmp.select_next_item()
	  elseif luasnip.expand_or_jumpable() then
		luasnip.expand_or_jump()
	  else
		fallback()
	  end
	end, { 'i', 's' }),
	['<S-Tab>'] = cmp.mapping(function(fallback)
	  if cmp.visible() then
		cmp.select_prev_item()
	  elseif luasnip.jumpable(-1) then
		luasnip.jump(-1)
	  else
		fallback()
	  end
	end, { 'i', 's' }),
}),
sources = cmp.config.sources({
  { name = 'nvim_lsp' },
  --{ name = 'vsnip' }, -- For vsnip users.
  { name = 'luasnip' }, -- For luasnip users.
  -- { name = 'ultisnips' }, -- For ultisnips users.
  -- { name = 'snippy' }, -- For snippy users.
}, {
  { name = 'buffer' },
})
})
-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Enable some language servers with the additional completion capabilities offered by nvim-cmp
lspconfig['csharp_ls'].setup{
	autostart = false,
	on_attach = on_attach,
	cmd = {"/home/yarob/.dotnet/tools/csharp-ls"},
    --capabilities = capabilities,
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
	virtual_text = false,
	underline = true,
	update_in_insert = false,
	signs = false,
  }
)


lspconfig['rust_analyzer'].setup{
	autostart = false,
	on_attach = on_attach,
	cmd = {"/home/yarob/.opt/rust-lsp/rust_analyzer"},
	filetypes = {"rust"},
	single_file_support = false,
	settings = {
		["rust-analyzer"] = {},
	}
}

lspconfig['zls'].setup{
	autostart = false,
	on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig['ccls'].setup{
	autostart = false,
	on_attach = on_attach,
    capabilities = capabilities,
}

lspconfig['jdtls'].setup{
	autostart = false,
	on_attach = on_attach,
	cmd = {"/home/yarob/.opt/jdt/bin/jdtls",
		--"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		--"-Dosgi.bundles.defaultStartLevel=4",
		--"-Declipse.product=org.eclipse.jdt.ls.core.product",
		--"-Dlog.protocol=true",
		--"-Dlog.level=ALL",
		--"-Xms1g",
		--"--add-modules=ALL-SYSTEM",
		--"--add-opens", "java.base/java.util=ALL-UNNAMED",
		--"--add-opens", "java.base/java.lang=ALL-UNNAMED",
         -- Must point to the eclipse.jdt.ls installation
	--'-jar', '/home/yarob/.opt/jdt/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
    --'-configuration', '/home/yarob/.opt/jdt/config_linux/config.ini',
    -- See data directory configuration` section in the README
},
	settings = {
		java = {
		}
	  },
	init_options = {
		bundles = {}
	  },
	single_file_support = false,
	filetypes = {"java"},
}

lspconfig['phpactor'].setup{
	autostart = false,
	on_attach = on_attach,
}
